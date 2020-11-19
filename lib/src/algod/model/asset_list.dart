import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'asset.dart';

part 'asset_list.g.dart';

abstract class AssetList implements Built<AssetList, AssetListBuilder> {
  /* AssetList is a list of assets */
  @nullable
  @BuiltValueField(wireName: r'assets')
  BuiltList<Asset> get assets;

  // Boilerplate code needed to wire-up generated code
  AssetList._();

  factory AssetList([Function(AssetListBuilder b) updates]) = _$AssetList;

  static Serializer<AssetList> get serializer => _$assetListSerializer;
}
