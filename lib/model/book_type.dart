import 'package:dojin_hub/selection/book_status.dart';
import 'package:dojin_hub/selection/currency.dart';

abstract class BookType {
  late BookStatus bookStatus;
  late int sellingPrice;
  late Currency currency;
}
