import 'package:dojin_hub/entity/product.dart';
import 'package:dojin_hub/repository/products_repository.dart';
import 'package:uuid/uuid.dart';

class ProductRepositoryMock extends ProductRepository {
  @override
  void add() {
    // NO-OP
  }

  @override
  List<Product> fetch() {
    return [
      Product(id: Uuid().v1(), title: 'ほげほげ'),
      Product(id: Uuid().v1(), title: 'ふーばー'),
    ];
  }
}
