import 'package:dojin_hub/domain/entity/product.dart';

abstract class ProductRepository {
  List<Product> fetch();

  void add();
}
