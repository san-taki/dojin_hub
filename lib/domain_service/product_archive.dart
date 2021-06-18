import 'package:dojin_hub/domain_model/product/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_archive.freezed.dart';

@freezed
class ProductArchive with _$ProductArchive{
  const factory ProductArchive({
    @Default([]) List<Product> products,
  }) = _ProductArchive;
}