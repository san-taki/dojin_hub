import 'package:dojin_hub/domain/product_storage.dart';
import 'package:dojin_hub/entity/book.dart';
import 'package:dojin_hub/entity/edition.dart';
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
