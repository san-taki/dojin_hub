import 'package:dojin_hub/provider/domain_provider.dart';
import 'package:dojin_hub/provider/temporary_provider.dart';
import 'package:dojin_hub/ui/screen_model/product_detail_screen_model.dart';
import 'package:dojin_hub/ui/screen_model/product_storage_screen_model.dart';
import 'package:dojin_hub/ui/screen_model/home_screen_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeScreenModelProvider = ChangeNotifierProvider.autoDispose(
  (ref) => HomeScreenModel(),
);

final productStorageScreenModelProvider = ChangeNotifierProvider.autoDispose(
  (ref) => ProductStorageScreenModel(
    productStorage: ref.watch(bookStorageProvider),
    productStorageController: ref.watch(bookStorageProvider.notifier),
  ),
);

final productDetailScreenModelProvider = ChangeNotifierProvider.autoDispose(
  (ref) => ProductDetailScreenModel(
    products: ref.watch(bookStorageProvider).products,
    currentPosition:
        ref.watch(productDetailScreenCurrentPositionProvider).state,
  ),
);
