// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_multisig_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListMultisigRequest> _$listMultisigRequestSerializer =
    new _$ListMultisigRequestSerializer();

class _$ListMultisigRequestSerializer
    implements StructuredSerializer<ListMultisigRequest> {
  @override
  final Iterable<Type> types = const [
    ListMultisigRequest,
    _$ListMultisigRequest
  ];
  @override
  final String wireName = 'ListMultisigRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ListMultisigRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.walletHandleToken != null) {
      result
        ..add('wallet_handle_token')
        ..add(serializers.serialize(object.walletHandleToken,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ListMultisigRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListMultisigRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'wallet_handle_token':
          result.walletHandleToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ListMultisigRequest extends ListMultisigRequest {
  @override
  final String walletHandleToken;

  factory _$ListMultisigRequest(
          [void Function(ListMultisigRequestBuilder) updates]) =>
      (new ListMultisigRequestBuilder()..update(updates)).build();

  _$ListMultisigRequest._({this.walletHandleToken}) : super._();

  @override
  ListMultisigRequest rebuild(
          void Function(ListMultisigRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListMultisigRequestBuilder toBuilder() =>
      new ListMultisigRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListMultisigRequest &&
        walletHandleToken == other.walletHandleToken;
  }

  @override
  int get hashCode {
    return $jf($jc(0, walletHandleToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListMultisigRequest')
          ..add('walletHandleToken', walletHandleToken))
        .toString();
  }
}

class ListMultisigRequestBuilder
    implements Builder<ListMultisigRequest, ListMultisigRequestBuilder> {
  _$ListMultisigRequest _$v;

  String _walletHandleToken;
  String get walletHandleToken => _$this._walletHandleToken;
  set walletHandleToken(String walletHandleToken) =>
      _$this._walletHandleToken = walletHandleToken;

  ListMultisigRequestBuilder();

  ListMultisigRequestBuilder get _$this {
    if (_$v != null) {
      _walletHandleToken = _$v.walletHandleToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListMultisigRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListMultisigRequest;
  }

  @override
  void update(void Function(ListMultisigRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListMultisigRequest build() {
    final _$result = _$v ??
        new _$ListMultisigRequest._(walletHandleToken: walletHandleToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
