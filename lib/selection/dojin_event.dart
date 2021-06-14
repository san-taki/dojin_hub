import 'package:dojin_hub/entity/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dojin_event.freezed.dart';

@freezed
abstract class DojinEvent with _$DojinEvent {
  // 即売会
  @Assert('preparedProducts.length < unSoldProducts.length', 'preparedProducts < unSoldProducts')
  const factory DojinEvent.spotSale({
    required String title,
    required DateTime startDateTime,
    required DateTime endDateTime,
    // 用意した本
    required List<Product> preparedProducts,
    // 売れ残り本
    required List<Product> unSoldProducts,
  }) = _SpotSale;
  // それ以外
  const factory DojinEvent.extra({
    required String title,
    required List<Product> preparedProducts,
  }) = _Extra;
}
