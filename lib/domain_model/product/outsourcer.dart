import 'package:dojin_hub/domain_model/product/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'outsourcer.freezed.dart';

// 委託先
@freezed
class Outsourcer with _$Outsourcer {
  const factory Outsourcer({
    required String shopId,
    required String name,
    required List<Product> product,
  }) = _Outsourcer;
}
