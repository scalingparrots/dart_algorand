import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dart_algorand/algod.dart';

import 'asset.dart';

part 'asset_holding_list.g.dart';

abstract class AssetHoldingList implements Built<AssetHoldingList, AssetHoldingListBuilder> {
  /* AssetList is a list of assets */
  @nullable
  @BuiltValueField(wireName: r'assets')
  AssetHolding get assets;

  // Boilerplate code needed to wire-up generated code
  AssetHoldingList._();

  factory AssetHoldingList([Function(AssetHoldingListBuilder b) updates]) = _$AssetHoldingList;

  static Serializer<AssetHoldingList> get serializer => _$assetHoldingListSerializer;
}
