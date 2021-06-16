import 'package:dojin_hub/entity/product.dart';
import 'package:dojin_hub/model/outsourcer_type.dart';
import 'package:dojin_hub/model/product_type.dart';

// 委託先
class Outsourcer implements OutsourcerType {
  @override
  late String shopId;

  @override
  late String name;

  @override
  late List<ProductType> product;
}
