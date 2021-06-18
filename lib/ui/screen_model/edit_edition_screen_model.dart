import 'package:dojin_hub/domain_model/product/book.dart';
import 'package:dojin_hub/domain_model/product/edition.dart';
import 'package:dojin_hub/domain_service/product_storage.dart';
import 'package:flutter/widgets.dart';

class EditEditionScreenModel extends ChangeNotifier {
  String productId;
  Edition edition;
  ProductStorageController productStorageController;

  EditEditionScreenModel({
    required this.productId,
    required this.edition,
    required this.productStorageController,
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
    productStorageController.updateEdition(productId, edition);
  }
}
