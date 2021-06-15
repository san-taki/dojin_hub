import 'package:dojin_hub/entity/product.dart';
import 'package:dojin_hub/repository/products_repository.dart';

class ProductsRepositoryMock extends ProductsRepository {
  @override
  void add() {
    // NO-OP
  }

  @override
  List<Product> fetch() {
    throw UnimplementedError();
  }
}