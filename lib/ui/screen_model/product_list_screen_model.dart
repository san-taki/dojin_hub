import 'package:dojin_hub/domain_model/product/product.dart';
import 'package:flutter/material.dart';

class ProductListScreenModel extends ChangeNotifier {
  final List<Product> products;

  ProductListScreenModel({
    required this.products,
  });
}
