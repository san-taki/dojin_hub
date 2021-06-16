import 'package:dojin_hub/domain/product_storage.dart';
import 'package:dojin_hub/entity/product.dart';
import 'package:flutter/material.dart';

class ProductDetailScreenModel extends ChangeNotifier {
  final Product product;
  final ProductStorageController productStorageController;

  ProductDetailScreenModel({
    required this.product,
    required this.productStorageController,
  });

  void _update(Product product) {}

  void setThumbnailPath(String path) {
    _update(
      Product(
        id: product.id,
        title: product.title,
        thumbnailPath: path,
        editions: product.editions,
      ),
    );
  }

  void delete() {}
}
