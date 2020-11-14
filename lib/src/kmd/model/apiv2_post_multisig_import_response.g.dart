// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiv2_post_multisig_import_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<APIV1POSTMultisigImportResponse>
    _$aPIV1POSTMultisigImportResponseSerializer =
    new _$APIV1POSTMultisigImportResponseSerializer();

class _$APIV1POSTMultisigImportResponseSerializer
    implements StructuredSerializer<APIV1POSTMultisigImportResponse> {
  @override
  final Iterable<Type> types = const [
    APIV1POSTMultisigImportResponse,
    _$APIV1POSTMultisigImportResponse
  ];
  @override
  final String wireName = 'APIV1POSTMultisigImportResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, APIV1POSTMultisigImportResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.address != null) {
      result
        ..add('address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(String)));
    }
    if (object.error != null) {
      result
        ..add('error')
        ..add(serializers.serialize(object.error,
            specifiedType: const FullType(bool)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  APIV1POSTMultisigImportResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new APIV1POSTMultisigImportResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$APIV1POSTMultisigImportResponse
    extends APIV1POSTMultisigImportResponse {
  @override
  final String address;
  @override
  final bool error;
  @override
  final String message;

  factory _$APIV1POSTMultisigImportResponse(
          [void Function(APIV1POSTMultisigImportResponseBuilder) updates]) =>
      (new APIV1POSTMultisigImportResponseBuilder()..update(updates)).build();

  _$APIV1POSTMultisigImportResponse._({this.address, this.error, this.message})
      : super._();

  @override
  APIV1POSTMultisigImportResponse rebuild(
          void Function(APIV1POSTMultisigImportResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  APIV1POSTMultisigImportResponseBuilder toBuilder() =>
      new APIV1POSTMultisigImportResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is APIV1POSTMultisigImportResponse &&
        address == other.address &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, address.hashCode), error.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('APIV1POSTMultisigImportResponse')
          ..add('address', address)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class APIV1POSTMultisigImportResponseBuilder
    implements
        Builder<APIV1POSTMultisigImportResponse,
            APIV1POSTMultisigImportResponseBuilder> {
  _$APIV1POSTMultisigImportResponse _$v;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  bool _error;
  bool get error => _$this._error;
  set error(bool error) => _$this._error = error;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  APIV1POSTMultisigImportResponseBuilder();

  APIV1POSTMultisigImportResponseBuilder get _$this {
    if (_$v != null) {
      _address = _$v.address;
      _error = _$v.error;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(APIV1POSTMultisigImportResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$APIV1POSTMultisigImportResponse;
  }

  @override
  void update(void Function(APIV1POSTMultisigImportResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$APIV1POSTMultisigImportResponse build() {
    final _$result = _$v ??
        new _$APIV1POSTMultisigImportResponse._(
            address: address, error: error, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
