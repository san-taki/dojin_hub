import 'package:dojin_hub/provider/domain_provider.dart';
import 'package:dojin_hub/provider/temporary_provider.dart';
import 'package:dojin_hub/ui/listener/text_field_listener.dart';
import 'package:dojin_hub/ui/listener/touch_listeners.dart';
import 'package:dojin_hub/ui/screen_model/create_product_screen_model.dart';
import 'package:dojin_hub/ui/screen_model/home_screen_model.dart';
import 'package:dojin_hub/ui/screen_model/product_detail_pager_screen_model.dart';
import 'package:dojin_hub/ui/screen_model/product_detail_screen_model.dart';
import 'package:dojin_hub/ui/screen_model/product_storage_screen_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeScreenModelProvider = ChangeNotifierProvider.autoDispose(
  (ref) => HomeScreenModel(),
);

final productStorageScreenModelProvider = ChangeNotifierProvider.autoDispose(
  (ref) => ProductStorageScreenModel(
    productStorage: ref.watch(productStorageProvider),
  ),
);

final productDetailScreenModelProvider = ChangeNotifierProvider.autoDispose(
  (ref) => ProductDetailScreenModel(
    product: ref
        .watch(productStorageProvider)
        .products[ref.watch(productDetailScreenCurrentPositionProvider).state],
    productStorageController: ref.read(productStorageProvider.notifier),
  ),
);

final productDetailPagerScreenModelProvider =
    ChangeNotifierProvider.autoDispose(
  (ref) => ProductDetailPagerScreenModel(
    products: ref.watch(productStorageProvider).products,
    pageController: ref.read(pageControllerProvider),
  ),
);

final createProductScreenModelProvider = ChangeNotifierProvider.autoDispose(
  (ref) => CreateProductScreenModel(
    fullScreenListener: FullScreenListener(),
    textFieldListener: TextFieldListener(),
    productStorageController: ref.read(productStorageProvider.notifier),
  ),
);
