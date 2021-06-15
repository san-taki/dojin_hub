import 'package:dojin_hub/domain/product_storage.dart';
import 'package:dojin_hub/entity/product.dart';
import 'package:flutter/material.dart';

class ProductStorageScreenModel extends ChangeNotifier {
  final ProductStorage productStorage;
  final ProductStorageController productStorageController;

  ProductStorageScreenModel({
    required this.productStorage,
    required this.productStorageController,
  });

  void addProduct(Product newProduct) {
    productStorageController.addProduct(newProduct);
  }
}
