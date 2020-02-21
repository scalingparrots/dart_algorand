import 'dart:collection';

import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:pinenacl/api.dart';
import 'package:base32/base32.dart';
import 'package:convert/convert.dart';

import 'account.dart';
import 'constants.dart';
import 'encoding.dart';

class Mappable {
  SplayTreeMap<String, dynamic> dictify() {
    return SplayTreeMap();
  }
}

class Transaction implements Mappable {
  String sender;
  int fee;
  int first_valid_round;
  int last_valid_round;
  Uint8List note;
  String genesis_id;
  String genesis_hash;
  String lease;
  String type;

  Transaction(
      {this.sender,
      this.fee,
      this.first_valid_round,
      this.last_valid_round,
      this.note,
      this.genesis_id,
      this.genesis_hash,
      this.lease,
      this.type}) {}

  SplayTreeMap<String, dynamic> dictify() {
    var m = SplayTreeMap<String, dynamic>();

    m['fee'] = fee;
    m['fv'] = first_valid_round;

    if (genesis_id != null) {
      m['gen'] = genesis_id;
    }

    m['gh'] = base64.decode(genesis_hash);
    m['lv'] = last_valid_round;
    m['type'] = type;
    m['snd'] = decode_address(sender);

    if (note != null) {
      m['note'] = note;
    }

    return m;
  }

  static Transaction undictify(Map<String, dynamic> m) {
    final args = {
      'sender': encode_address(m['snd']),
      'fee': m['fee'],
      'first': m.containsKey('fv') ? m['fv']: 0,
      'last': m['lv'],
      'gh': base64Encode(m['gh']),
      'note': m.containsKey('note') ? m['note']: null,
      'gen': m.containsKey('gen') ? m['gen']: null,
      'lease': m.containsKey('lx') ? m['lx']: null
    };

    if (m['type'] == PAYMENT_TXN) {
      args.addAll(PaymentTxn._undictify(m));
      return PaymentTxn(
        sender: args['sender'],
        fee: args['fee'],
        first_valid_round: args['first'],
        last_valid_round: args['last'],
        genesis_hash: args['gh'],
        note: args['note'],
        genesis_id: args['gen'],
        lease: args['lx'],
        close_remainder_to: args['close_remainder_to'],
        amt: args['amt'],
        receiver: args['receiver'],
        flat_fee: true,

      );
    }

    throw Exception('not implemented');
  }

  SignedTransaction sign(String private_key) {
    final sig = raw_sign(private_key);
    final b64sig = base64Encode(sig);
    final stx = SignedTransaction(transaction: this, signature: b64sig);
    return stx;
  }

  Uint8List raw_sign(String private_key) {
    final pkey = base64Decode(private_key);
    final txn = msgpack_encode(this);
    final to_sign = Utf8Encoder().convert(TXID_PREFIX) + base64Decode(txn);
    final signing_key = SigningKey.fromSeed(pkey.sublist(0, KEY_LEN_BYTES));
    final signed = signing_key.sign(to_sign);
    return signed.signature;
  }

  String get_txid() {
    final txn = msgpack_encode(this);
    final to_sign = Utf8Encoder().convert(TXID_PREFIX) + base64Decode(txn);
    final txid = checksum(Uint8List.fromList(to_sign));
    return undo_padding(base32.encode(txid));
  }

  int estimate_size() {
    final account = generate_account();
    final stx = sign(account.private_key);
    return base64Decode(msgpack_encode(stx)).length;
  }
}

class PaymentTxn extends Transaction {
  String receiver;
  int amt;
  String close_remainder_to;

  PaymentTxn({
    String sender,
    int fee,
    int first_valid_round,
    int last_valid_round,
    Uint8List note,
    String genesis_id,
    String genesis_hash,
    lease = '',
    this.amt,
    this.receiver,
    this.close_remainder_to,
    flat_fee = false,
  }) : super(
            sender: sender,
            fee: fee,
            first_valid_round: first_valid_round,
            last_valid_round: last_valid_round,
            note: note,
            genesis_id: genesis_id,
            genesis_hash: genesis_hash,
            lease: lease,
            type: PAYMENT_TXN) {

    this.fee = flat_fee ? max(MIN_TXN_FEE, fee) : max(estimate_size() * fee, MIN_TXN_FEE);

  }

  @override
  SplayTreeMap<String, dynamic> dictify() {
    var m = super.dictify();

    m['amt'] = amt;
    m['rcv'] = decode_address(receiver);

    if (close_remainder_to != null) {
      m['close'] = decode_address(close_remainder_to);
    }

    return m;
  }

  static _undictify(Map<String, dynamic> m) {
    return {
      'close_remainder_to': m.containsKey('close') ? encode_address(m['close']): null,
      'amt': m.containsKey('amt') ? m['amt'] : 0,
      'receiver': m.containsKey('rcv') ? encode_address(m['rcv']) : null
    };
  }
}

class SignedTransaction implements Mappable {
  String signature;
  Transaction transaction;

  SignedTransaction({this.signature, this.transaction});

  @override
  SplayTreeMap<String, dynamic> dictify() {
    final d = SplayTreeMap<String, dynamic>();
    d['sig'] = base64Decode(signature);
    d['txn'] = transaction.dictify();
    return d;
  }
}

///Represents a transaction for asset transfer.
///
///To begin accepting an asset, supply the same address as both sender and
///receiver, and set amount to 0.
///
///To revoke an asset, set revocation_target, and issue the transaction from
///the asset's revocation manager account.

class AssetTransferTxn extends Transaction {
  String receiver;
  int amt;
  int index;
  String close_assets_to;
  String revocation_target;

  AssetTransferTxn({
    String sender,
    int fee,
    int first_valid_round,
    int last_valid_round,
    Uint8List note,
    String genesis_id,
    String genesis_hash,
    lease = '',
    this.amt,
    this.receiver,
    this.index,
    this.close_assets_to,
    this.revocation_target,
    flat_fee = false,
  }) : super(
      sender: sender,
      fee: fee,
      first_valid_round: first_valid_round,
      last_valid_round: last_valid_round,
      note: note,
      genesis_id: genesis_id,
      genesis_hash: genesis_hash,
      lease: lease,
      type: ASSET_TRANSFER_TXN) {

    this.fee = flat_fee ? max(MIN_TXN_FEE, fee) : max(estimate_size() * fee, MIN_TXN_FEE);
  }

  @override
  SplayTreeMap<String, dynamic> dictify() {
    var m = super.dictify();

    if (amt > 0) {
      m['aamt'] = amt;
    }


    m['arcv'] = decode_address(receiver);

    if (close_assets_to != null) {
      m['aclose'] = decode_address(close_assets_to);
    }

    if (revocation_target != null) {
      m['asnd'] = decode_address(revocation_target);
    }

    m['xaid'] = index;

    return m;
  }

}