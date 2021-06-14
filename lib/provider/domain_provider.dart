import 'package:dojin_hub/domain/book_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bookStorageProvider =
    StateNotifierProvider<BookStorageController, BookStorage>(
  (ref) => BookStorageController(),
);
