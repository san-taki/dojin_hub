import 'package:dojin_hub/domain/entity/dojin_event.dart';
import 'package:dojin_hub/domain/entity/edition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const Product._();
  const factory Product({
    required String id,
    required String title,
    @Default('') String coverImagePath,
    @Default([]) List<Edition> editions,
    @Default([]) List<DojinEvent> atendedEvents,
  }) = _Product;

  bool soldOut() => editions.map((e) => e.soldOut).toList().contains(false);
}
