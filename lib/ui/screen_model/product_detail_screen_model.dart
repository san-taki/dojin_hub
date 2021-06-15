import 'package:dojin_hub/entity/product.dart';
import 'package:dojin_hub/log/debug_log.dart';
import 'package:flutter/material.dart';

class ProductDetailScreenModel extends ChangeNotifier {
  final List<Product> products;
  int currentPosition;

  ProductDetailScreenModel({
    required this.products,
    required this.currentPosition,
  });

  void moveToNext() {
    if (products.length - 1 == currentPosition) {
      DebugLog.d("canceled moveToNext()");
      return;
    } else {
      currentPosition = currentPosition + 1;
      notifyListeners();
    }
  }

  void moveToPrevious() {
    if (currentPosition == 0) {
      DebugLog.d("canceled moveToPrevious()");
      return;
    } else {
      currentPosition = currentPosition - 1;
      notifyListeners();
    }
  }
}
