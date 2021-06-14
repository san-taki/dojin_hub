// 版データ
import 'package:dojin_hub/entity/print_shop.dart';

class Edition {
  final int num;
  final PrintShop printShop;
  final DateTime publicationDate;

  Edition({
    required this.num,
    required this.printShop,
    required this.publicationDate,
  });
}
