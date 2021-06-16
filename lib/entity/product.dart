import 'package:dojin_hub/entity/edition.dart';

class Product {
  final String id;
  final String title;
  final String thumbnailPath;
  final List<Edition> editions;

  Product({
    required this.id,
    required this.title,
    this.thumbnailPath = "",
    this.editions = const <Edition>[],
  });

  bool get soldOut => editions.map((e) => e.soldOut).toList().contains(false);
}
