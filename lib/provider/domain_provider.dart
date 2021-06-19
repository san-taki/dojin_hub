import 'package:dojin_hub/domain/store/product_store.dart';
import 'package:dojin_hub/provider/repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productStoreProvider =
    StateNotifierProvider<ProductStoreController, ProductStore>(
  (ref) => ProductStoreController(
    ref.read(productRepositoryProvider),
  ),
);
