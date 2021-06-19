import 'package:dojin_hub/domain/entity/book_status.dart';
import 'package:dojin_hub/domain/entity/currency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';

@freezed
class Book with _$Book {
  const factory Book({
    required BookStatus bookStatus,
    required Currency currency,
    required int sellingPrice,
  }) = _Book;
}
