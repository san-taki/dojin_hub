import 'package:dojin_hub/model/product_type.dart';

// 委託先
abstract class OutsourcerType {
  late String shopId;
  late String name;
  late List<ProductType> product;
}
