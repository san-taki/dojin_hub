import 'package:dojin_hub/entity/product.dart';

abstract class ProductsRepository {
  List<Product> fetch();
  void add();
}
