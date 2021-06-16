// 版データ
import 'package:dojin_hub/model/book_type.dart';
import 'package:dojin_hub/model/print_shop_type.dart';

abstract class EditionType {
  late int number;
  late PrintShopType printShop;
  late DateTime publicationDate;
  late List<BookType> books;
}
