import 'package:dojin_hub/domain/entity/edition.dart';
import 'package:dojin_hub/domain/entity/product.dart';
import 'package:dojin_hub/domain/repository/product_repository.dart';
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
      Product(id: Uuid().v1(), title: 'ふーばー', editions: [
        Edition(
          number: 1,
        ),
        Edition(
          number: 2,
        ),
      ]),
    ];
  }
}
