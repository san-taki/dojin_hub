import 'package:dojin_hub/entity/edition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String id,
    required String title,
    @Default('') String coverImagePath,
    @Default('') String backCoverImagePath,
    @Default([]) List<Edition> editions,
  }) = _Product;
}

extension ProductExt on Product {
  bool get soldOut => editions.map((e) => e.soldOut).toList().contains(false);
}