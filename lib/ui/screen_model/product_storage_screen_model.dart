import 'package:dojin_hub/domain/product_storage.dart';
import 'package:flutter/material.dart';

class ProductStorageScreenModel extends ChangeNotifier {
  final ProductStorage productStorage;

  ProductStorageScreenModel({
    required this.productStorage,
  });
}
