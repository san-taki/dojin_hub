import 'package:dojin_hub/domain/entity/product.dart';
import 'package:flutter/material.dart';

class ProductDetailPagerScreenModel extends ChangeNotifier {
  final List<Product> products;
  final PageController pageController;

  ProductDetailPagerScreenModel({
    required this.products,
    required this.pageController,
  });
}
