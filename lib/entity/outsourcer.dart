import 'package:dojin_hub/entity/book.dart';

// 委託先
class Outsourcer {
  final String id;
  final String title;
  final List<Book> books;

  Outsourcer({
    required this.id,
    required this.title,
    required this.books,
  });
}
