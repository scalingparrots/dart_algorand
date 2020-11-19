// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_holding_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AssetHoldingList> _$assetHoldingListSerializer =
    new _$AssetHoldingListSerializer();

class _$AssetHoldingListSerializer
    implements StructuredSerializer<AssetHoldingList> {
  @override
  final Iterable<Type> types = const [AssetHoldingList, _$AssetHoldingList];
  @override
  final String wireName = 'AssetHoldingList';

  @override
  Iterable<Object> serialize(Serializers serializers, AssetHoldingList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.assets != null) {
      result
        ..add('assets')
        ..add(serializers.serialize(object.assets,
            specifiedType: const FullType(
                BuiltList, const [const FullType(AssetHolding)])));
    }
    return result;
  }

  @override
  AssetHoldingList deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AssetHoldingListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'assets':
          result.assets.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AssetHolding)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$AssetHoldingList extends AssetHoldingList {
  @override
  final BuiltList<AssetHolding> assets;

  factory _$AssetHoldingList(
          [void Function(AssetHoldingListBuilder) updates]) =>
      (new AssetHoldingListBuilder()..update(updates)).build();

  _$AssetHoldingList._({this.assets}) : super._();

  @override
  AssetHoldingList rebuild(void Function(AssetHoldingListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetHoldingListBuilder toBuilder() =>
      new AssetHoldingListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssetHoldingList && assets == other.assets;
  }

  @override
  int get hashCode {
    return $jf($jc(0, assets.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AssetHoldingList')
          ..add('assets', assets))
        .toString();
  }
}

class AssetHoldingListBuilder
    implements Builder<AssetHoldingList, AssetHoldingListBuilder> {
  _$AssetHoldingList _$v;

  ListBuilder<AssetHolding> _assets;
  ListBuilder<AssetHolding> get assets =>
      _$this._assets ??= new ListBuilder<AssetHolding>();
  set assets(ListBuilder<AssetHolding> assets) => _$this._assets = assets;

  AssetHoldingListBuilder();

  AssetHoldingListBuilder get _$this {
    if (_$v != null) {
      _assets = _$v.assets?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssetHoldingList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AssetHoldingList;
  }

  @override
  void update(void Function(AssetHoldingListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AssetHoldingList build() {
    _$AssetHoldingList _$result;
    try {
      _$result = _$v ?? new _$AssetHoldingList._(assets: _assets?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'assets';
        _assets?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AssetHoldingList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
