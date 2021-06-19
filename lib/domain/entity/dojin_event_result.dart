import 'package:dojin_hub/domain/entity/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dojin_event_result.freezed.dart';

@freezed
class DojinEventResult with _$DojinEventResult {
  // 即売会
  @Assert('preparedProducts.length < unSoldProducts.length',
      'preparedProducts < unSoldProducts')
  const factory DojinEventResult.spotSale({
    // 用意した本
    required List<Product> preparedProducts,
    // 売れ残り本
    required List<Product> unSoldProducts,
  }) = _SpotSale;
}
