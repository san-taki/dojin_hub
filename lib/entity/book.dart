import 'package:dojin_hub/model/book_type.dart';
import 'package:dojin_hub/selection/book_status.dart';
import 'package:dojin_hub/selection/currency.dart';

class Book implements BookType {
  @override
  BookStatus bookStatus;
  @override
  Currency currency;
  @override
  int sellingPrice;

  Book({
    required this.bookStatus,
    required this.currency,
    required this.sellingPrice,
  });
}
