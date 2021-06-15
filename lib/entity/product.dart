import 'package:dojin_hub/entity/edition.dart';

class Product {
  final String title;
  final List<Edition> editions;

  Product({
    required this.title,
    required this.editions,
  });
}
