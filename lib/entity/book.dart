import 'package:dojin_hub/entity/edition.dart';
import 'package:dojin_hub/selection/book_status.dart';

class Book {
  final BookStatus bookStatus;
  final Edition edition;

  Book({
    required this.bookStatus,
    required this.edition,
  });
}
