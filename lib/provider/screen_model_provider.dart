import 'package:dojin_hub/entity/product.dart';
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
    productStorageController: ref.watch(productStorageProvider.notifier),
  ),
);

final homeScreenModelProvider = ChangeNotifierProvider.autoDispose(
  (ref) => HomeScreenModel(),
);

final productListScreenModelProvider = ChangeNotifierProvider.autoDispose(
  (ref) => ProductListScreenModel(
    products: ref.watch(productStorageProvider).products,
  ),
);

final productDetailScreenModelProvider = ChangeNotifierProvider.autoDispose
    .family<ProductDetailScreenModel, Product>(
  (ref, product) => ProductDetailScreenModel(
    product: product,
    productStorageController: ref.read(productStorageProvider.notifier),
  ),
);

final productDetailPagerScreenModelProvider =
    ChangeNotifierProvider.autoDispose(
  (ref) => ProductDetailPagerScreenModel(
    products: ref.watch(productStorageProvider).products,
    pageController: PageController(
        initialPage:
            ref.read(productDetailScreenCurrentPositionProvider).state),
  ),
);

final createProductScreenModelProvider = ChangeNotifierProvider.autoDispose(
  (ref) => CreateProductScreenModel(
    fullScreenListener: FullScreenListener(),
    textFieldListener: TextFieldListener(),
    productStorageController: ref.read(productStorageProvider.notifier),
  ),
);
