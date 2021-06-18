import 'package:dojin_hub/domain_model/product/product.dart';
import 'package:dojin_hub/domain_service/product_storage.dart';
import 'package:dojin_hub/ui/listener/text_field_listener.dart';
import 'package:dojin_hub/ui/listener/touch_listeners.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class CreateProductScreenModel extends ChangeNotifier {
  String coverImagePath = '';
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
    coverImagePath = path;
    notifyListeners();
  }

  void saveProduct() {
    productStorageController.addProduct(
      Product(
        id: Uuid().v1(),
        title: textFieldListener.text,
        coverImagePath: coverImagePath,
      ),
    );
  }
}
