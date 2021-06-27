import 'package:dojin_hub/di/domain_provider.dart';
import 'package:dojin_hub/di/temporary_provider.dart';
import 'package:dojin_hub/ui/listener/text_field_listener.dart';
import 'package:dojin_hub/ui/listener/touch_listeners.dart';
import 'package:dojin_hub/ui/screen_model/create_product_screen_model.dart';
import 'package:dojin_hub/ui/screen_model/home_screen_model.dart';
import 'package:dojin_hub/ui/screen_model/product_detail_screen_model.dart';
import 'package:dojin_hub/ui/screen_model/product_list_screen_model.dart';
import 'package:dojin_hub/ui/screen_model/splash_screen_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final splashScreenModelProvider = StateNotifierProvider.autoDispose<
    SplashScreenModelController, SplashScreenModel>(
  (ref) => SplashScreenModelController(
    SplashScreenModel(),
  ),
);

final homeScreenModelProvider = StateNotifierProvider.autoDispose<
    HomeScreenModelController, HomeScreenModel>(
  (ref) => HomeScreenModelController(
    HomeScreenModel(),
  ),
);

final productListScreenModelProvider = StateNotifierProvider.autoDispose<
    ProductListScreenModelController, ProductListScreenModel>(
  (ref) => ProductListScreenModelController(
    ProductListScreenModel(
      products: ref.watch(productStoreProvider).products,
    ),
  ),
);

final productDetailScreenModelProvider = StateNotifierProvider.autoDispose<
    ProductDetailScreenModelController, ProductDetailScreenModel>(
  (ref) => ProductDetailScreenModelController(
    ProductDetailScreenModel(
      product: ref
          .read(productStoreProvider)
          .products[ref.read(productDetailScreenCurrentPositionProvider).state],
      productStoreController: ref.read(productStoreProvider.notifier),
      selectEditionIndex: 0,
    ),
  ),
);

final createProductScreenModelProvider = ChangeNotifierProvider.autoDispose(
  (ref) => CreateProductScreenModel(
    fullScreenListener: FullScreenListener(),
    textFieldListener: TextFieldListener(),
    productStorageController: ref.read(productStoreProvider.notifier),
  ),
);
