import 'package:dojin_hub/selection/book_status.dart';
import 'package:dojin_hub/selection/currency.dart';

class Book {
  final BookStatus bookStatus;
  final int sellingPrice;
  final Currency currency;

  Book({
    required this.bookStatus,
    required this.sellingPrice,
    required this.currency,
  });
}
