
// 印刷所
import 'package:dojin_hub/model/print_shop_type.dart';

class PrintShop implements PrintShopType {
  @override late int id;
  @override late String name;

  PrintShop({
    required this.id,
    required this.name,
  }) : super();
}
