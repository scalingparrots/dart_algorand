// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_multisig_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SignMultisigRequest> _$signMultisigRequestSerializer =
    new _$SignMultisigRequestSerializer();

class _$SignMultisigRequestSerializer
    implements StructuredSerializer<SignMultisigRequest> {
  @override
  final Iterable<Type> types = const [
    SignMultisigRequest,
    _$SignMultisigRequest
  ];
  @override
  final String wireName = 'SignMultisigRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SignMultisigRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.partialMultisig != null) {
      result
        ..add('partial_multisig')
        ..add(serializers.serialize(object.partialMultisig,
            specifiedType: const FullType(MultisigSig)));
    }
    if (object.publicKey != null) {
      result
        ..add('public_key')
        ..add(serializers.serialize(object.publicKey,
            specifiedType: const FullType(String)));
    }
    if (object.transaction != null) {
      result
        ..add('transaction')
        ..add(serializers.serialize(object.transaction,
            specifiedType: const FullType(String)));
    }
    if (object.walletHandleToken != null) {
      result
        ..add('wallet_handle_token')
        ..add(serializers.serialize(object.walletHandleToken,
            specifiedType: const FullType(String)));
    }
    if (object.walletPassword != null) {
      result
        ..add('wallet_password')
        ..add(serializers.serialize(object.walletPassword,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SignMultisigRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SignMultisigRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'partial_multisig':
          result.partialMultisig.replace(serializers.deserialize(value,
              specifiedType: const FullType(MultisigSig)) as MultisigSig);
          break;
        case 'public_key':
          result.publicKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transaction':
          result.transaction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'wallet_handle_token':
          result.walletHandleToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'wallet_password':
          result.walletPassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SignMultisigRequest extends SignMultisigRequest {
  @override
  final MultisigSig partialMultisig;
  @override
  final String publicKey;
  @override
  final String transaction;
  @override
  final String walletHandleToken;
  @override
  final String walletPassword;

  factory _$SignMultisigRequest(
          [void Function(SignMultisigRequestBuilder) updates]) =>
      (new SignMultisigRequestBuilder()..update(updates)).build();

  _$SignMultisigRequest._(
      {this.partialMultisig,
      this.publicKey,
      this.transaction,
      this.walletHandleToken,
      this.walletPassword})
      : super._();

  @override
  SignMultisigRequest rebuild(
          void Function(SignMultisigRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignMultisigRequestBuilder toBuilder() =>
      new SignMultisigRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignMultisigRequest &&
        partialMultisig == other.partialMultisig &&
        publicKey == other.publicKey &&
        transaction == other.transaction &&
        walletHandleToken == other.walletHandleToken &&
        walletPassword == other.walletPassword;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, partialMultisig.hashCode), publicKey.hashCode),
                transaction.hashCode),
            walletHandleToken.hashCode),
        walletPassword.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignMultisigRequest')
          ..add('partialMultisig', partialMultisig)
          ..add('publicKey', publicKey)
          ..add('transaction', transaction)
          ..add('walletHandleToken', walletHandleToken)
          ..add('walletPassword', walletPassword))
        .toString();
  }
}

class SignMultisigRequestBuilder
    implements Builder<SignMultisigRequest, SignMultisigRequestBuilder> {
  _$SignMultisigRequest _$v;

  MultisigSigBuilder _partialMultisig;
  MultisigSigBuilder get partialMultisig =>
      _$this._partialMultisig ??= new MultisigSigBuilder();
  set partialMultisig(MultisigSigBuilder partialMultisig) =>
      _$this._partialMultisig = partialMultisig;

  String _publicKey;
  String get publicKey => _$this._publicKey;
  set publicKey(String publicKey) => _$this._publicKey = publicKey;

  String _transaction;
  String get transaction => _$this._transaction;
  set transaction(String transaction) => _$this._transaction = transaction;

  String _walletHandleToken;
  String get walletHandleToken => _$this._walletHandleToken;
  set walletHandleToken(String walletHandleToken) =>
      _$this._walletHandleToken = walletHandleToken;

  String _walletPassword;
  String get walletPassword => _$this._walletPassword;
  set walletPassword(String walletPassword) =>
      _$this._walletPassword = walletPassword;

  SignMultisigRequestBuilder();

  SignMultisigRequestBuilder get _$this {
    if (_$v != null) {
      _partialMultisig = _$v.partialMultisig?.toBuilder();
      _publicKey = _$v.publicKey;
      _transaction = _$v.transaction;
      _walletHandleToken = _$v.walletHandleToken;
      _walletPassword = _$v.walletPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignMultisigRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SignMultisigRequest;
  }

  @override
  void update(void Function(SignMultisigRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignMultisigRequest build() {
    _$SignMultisigRequest _$result;
    try {
      _$result = _$v ??
          new _$SignMultisigRequest._(
              partialMultisig: _partialMultisig?.build(),
              publicKey: publicKey,
              transaction: transaction,
              walletHandleToken: walletHandleToken,
              walletPassword: walletPassword);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'partialMultisig';
        _partialMultisig?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SignMultisigRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
