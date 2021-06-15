import 'package:dojin_hub/domain/product_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bookStorageProvider =
    StateNotifierProvider<BookStorageController, ProductStorage>(
  (ref) => BookStorageController(),
);
