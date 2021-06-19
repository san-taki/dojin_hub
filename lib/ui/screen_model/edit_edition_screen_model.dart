import 'package:dojin_hub/domain/entity/book.dart';
import 'package:dojin_hub/domain/entity/edition.dart';
import 'package:dojin_hub/domain/store/product_store.dart';
import 'package:flutter/widgets.dart';

class EditEditionScreenModel extends ChangeNotifier {
  String productId;
  Edition edition;
  ProductStoreController productStoreController;

  EditEditionScreenModel({
    required this.productId,
    required this.edition,
    required this.productStoreController,
  });

  void setBooks(List<Book> books) {
    edition = Edition(
      number: edition.number,
      printShop: edition.printShop,
      publicationDate: edition.publicationDate,
      books: books,
    );
    notifyListeners();
  }

  void save() {
    productStoreController.updateEdition(productId, edition);
  }
}
