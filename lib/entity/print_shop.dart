import 'package:freezed_annotation/freezed_annotation.dart';

part 'print_shop.freezed.dart';

@freezed
class PrintShop with _$PrintShop {
  const factory PrintShop({
    required int id,
    required String name,
  }) = _PrintShop;
}
