import 'package:dojin_hub/di/repository_provider.dart';
import 'package:dojin_hub/domain/store/product_store.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productStoreProvider =
    StateNotifierProvider<ProductStoreController, ProductStore>(
  (ref) => ProductStoreController(
    ref.read(productRepositoryProvider),
  ),
);
