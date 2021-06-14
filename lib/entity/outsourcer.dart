import 'package:dojin_hub/entity/product.dart';

// 委託先
class Outsourcer {
  final String id;
  final String name;
  final List<Product> product;

  Outsourcer({
    required this.id,
    required this.name,
    required this.product,
  });
}
