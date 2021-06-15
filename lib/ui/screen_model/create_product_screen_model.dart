import 'package:dojin_hub/domain/product_storage.dart';
import 'package:dojin_hub/entity/product.dart';
import 'package:dojin_hub/ui/listener/text_field_listener.dart';
import 'package:dojin_hub/ui/listener/touch_listeners.dart';
import 'package:flutter/material.dart';

class CreateProductScreenModel extends ChangeNotifier {
  String thumbnailPath = '';
  FullScreenListener fullScreenListener;
  TextFieldListener textFieldListener;
  ProductStorageController productStorageController;

  CreateProductScreenModel({
    required this.fullScreenListener,
    required this.textFieldListener,
    required this.productStorageController,
  });

  @override
  void dispose() {
    textFieldListener.dispose();
    super.dispose();
  }

  void setThumbnailPath(String path) {
    thumbnailPath = path;
    notifyListeners();
  }

  void saveProduct() {
    productStorageController.addProduct(
      Product(
        title: textFieldListener.text,
        thumbnailPath: thumbnailPath,
      ),
    );
  }
}
