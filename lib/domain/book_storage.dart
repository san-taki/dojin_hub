import 'package:dojin_hub/entity/book.dart';
import 'package:dojin_hub/flamework/model_controller_type.dart';
import 'package:dojin_hub/flamework/model_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_storage.freezed.dart';

// 在庫
@freezed
class BookStorage extends ModelType with _$BookStorage{
  const factory BookStorage({
    @Default([]) List<Book> books,
  }) = _BookStorage;
}

class BookStorageController extends ModelControllerType<BookStorage> {
  BookStorageController(BookStorage bookStorage) : super(bookStorage);
}
