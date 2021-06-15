import 'package:dojin_hub/entity/edition.dart';

class Product {
  final String title;
  final String thumbnailPath;
  final List<Edition>? editions;

  Product({
    required this.title,
    this.thumbnailPath = "",
    this.editions,
  });

  bool get soldOut =>
      editions?.map((e) => e.soldOut).toList().contains(false) ?? false;
}
