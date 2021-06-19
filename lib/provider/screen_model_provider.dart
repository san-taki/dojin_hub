import 'package:dojin_hub/domain/entity/product.dart';
import 'package:dojin_hub/provider/domain_provider.dart';
import 'package:dojin_hub/provider/temporary_provider.dart';
import 'package:dojin_hub/ui/listener/text_field_listener.dart';
import 'package:dojin_hub/ui/listener/touch_listeners.dart';
import 'package:dojin_hub/ui/screen_model/create_product_screen_model.dart';
import 'package:dojin_hub/ui/screen_model/home_screen_model.dart';
import 'package:dojin_hub/ui/screen_model/product_detail_pager_screen_model.dart';
import 'package:dojin_hub/ui/screen_model/product_detail_screen_model.dart';
import 'package:dojin_hub/ui/screen_model/product_list_screen_model.dart';
import 'package:dojin_hub/ui/screen_model/splash_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final splashScreenModelProvider = ChangeNotifierProvider.autoDispose(
  (ref) => SplashScreenModel(
    productStoreController: ref.watch(productStoreProvider.notifier),
  ),
);

final homeScreenModelProvider = ChangeNotifierProvider.autoDispose(
  (ref) => HomeScreenModel(),
);

final productListScreenModelProvider = ChangeNotifierProvider.autoDispose(
  (ref) => ProductListScreenModel(
    products: ref.watch(productStoreProvider).products,
  ),
);

final productDetailScreenModelProvider = StateNotifierProvider.family<
    ProductDetailScreenModelController, ProductDetailScreenModel, Product>(
  (ref, product) => ProductDetailScreenModelController(
    ProductDetailScreenModel(
      product: product,
      productStoreController: ref.read(productStoreProvider.notifier),
    ),
  ),
);

final productDetailPagerScreenModelProvider =
    ChangeNotifierProvider.autoDispose(
  (ref) => ProductDetailPagerScreenModel(
    products: ref.watch(productStoreProvider).products,
    pageController: PageController(
        initialPage:
            ref.read(productDetailScreenCurrentPositionProvider).state),
  ),
);

final createProductScreenModelProvider = ChangeNotifierProvider.autoDispose(
  (ref) => CreateProductScreenModel(
    fullScreenListener: FullScreenListener(),
    textFieldListener: TextFieldListener(),
    productStorageController: ref.read(productStoreProvider.notifier),
  ),
);
