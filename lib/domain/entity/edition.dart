// 版データ
import 'package:dojin_hub/domain/entity/book.dart';
import 'package:dojin_hub/domain/entity/print_shop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edition.freezed.dart';

@freezed
class Edition with _$Edition {
  const Edition._();
  const factory Edition({
    required int number,
    int? page,
    PrintShop? printShop,
    int? printingCosts,
    DateTime? publicationDate,
    List<Book>? books,
  }) = _Edition;

  String get numberString => number == 1 ? '初版' : '第$number版';
  // FIXME
  bool get soldOut => false;
}
