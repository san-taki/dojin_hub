import 'package:dojin_hub/domain/store/product_store.dart';
import 'package:flutter/widgets.dart';

class SplashScreenModel extends ChangeNotifier {
  final ProductStoreController productStoreController;

  SplashScreenModel({
    required this.productStoreController,
  }) {
    initialize();
  }

  void initialize() {
    productStoreController.fetch();
  }
}
