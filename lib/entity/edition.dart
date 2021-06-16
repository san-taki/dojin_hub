// 版データ
import 'package:dojin_hub/model/book_type.dart';
import 'package:dojin_hub/model/edition_type.dart';
import 'package:dojin_hub/model/print_shop_type.dart';

class Edition implements EditionType {
  @override
  late int number;
  @override
  late PrintShopType printShop;
  @override
  late DateTime publicationDate;
  @override
  late List<BookType> books;

  Edition({
    required this.number,
    required this.printShop,
    required this.publicationDate,
    required this.books,
  });

  // TODO: ロジックはかんがえる
  bool get soldOut => true;

  String get numberString => number == 1 ? '初版' : '第$number版';
}
