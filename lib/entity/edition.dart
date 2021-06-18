// 版データ
import 'package:dojin_hub/entity/book.dart';
import 'package:dojin_hub/entity/print_shop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edition.freezed.dart';

@freezed
class Edition with _$Edition {
  const factory Edition({
    required int number,
    required PrintShop printShop,
    required DateTime publicationDate,
    required List<Book> books,
  }) = _Edition;
}

extension EditionExt on Edition {
  String get numberString => number == 1 ? '初版' : '第$number版';
  // FIXME
  bool get soldOut => false;
}
