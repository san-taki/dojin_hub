import 'package:dojin_hub/domain/book_storage.dart';
import 'package:flutter/material.dart';

class BookStorageScreenModel extends ChangeNotifier {
  final BookStorage bookStorage;

  BookStorageScreenModel({
    required this.bookStorage,
  });
}
