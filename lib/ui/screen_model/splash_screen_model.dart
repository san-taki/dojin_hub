import 'package:dojin_hub/domain/product_storage.dart';
import 'package:flutter/widgets.dart';

class SplashScreenModel extends ChangeNotifier {
  final ProductStorageController productStorageController;

  SplashScreenModel({
    required this.productStorageController,
  }) {
    initialize();
  }

  void initialize() {
    productStorageController.fetch();
  }
}
