import 'package:dojin_hub/domain/product_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productStorageProvider =
    StateNotifierProvider<ProductStorageController, ProductStorage>(
  (ref) => ProductStorageController(),
);
