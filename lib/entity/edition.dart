// 版データ
import 'package:dojin_hub/entity/book.dart';
import 'package:dojin_hub/entity/print_shop.dart';

class Edition {
  final int number;
  final PrintShop printShop;
  final DateTime publicationDate;
  final List<Book> books;

  Edition({
    required this.number,
    required this.printShop,
    required this.publicationDate,
    required this.books,
  });
}
