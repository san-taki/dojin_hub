import 'package:dojin_hub/domain/entity/dojin_event.dart';
import 'package:dojin_hub/domain/entity/product.dart';
import 'package:dojin_hub/domain/store/product_store.dart';
import 'package:dojin_hub/ui/listener/text_field_listener.dart';
import 'package:dojin_hub/ui/listener/touch_listeners.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class CreateProductScreenModel extends ChangeNotifier {
  String coverImagePath = '';
  FullScreenListener fullScreenListener;
  TextFieldListener textFieldListener;
  ProductStoreController productStorageController;

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
        atendedEvents: [
          DojinEvent(title: 'コミティア100'),
          DojinEvent(title: 'C99'),
        ],
      ),
    );
  }
}
