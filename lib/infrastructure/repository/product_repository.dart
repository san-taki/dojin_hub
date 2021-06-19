import 'package:dojin_hub/domain/entity/product.dart';
import 'package:dojin_hub/domain/repository/product_repository.dart' as domain;

class ProductRepository extends domain.ProductRepository {
  @override
  void add() {
    throw UnimplementedError();
  }

  @override
  List<Product> fetch() {
    throw UnimplementedError();
  }
}
