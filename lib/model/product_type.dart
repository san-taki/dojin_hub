import 'package:dojin_hub/model/edition_type.dart';

abstract class ProductType {
  late String title;
  late String thumbnailPath;
  late List<EditionType>? editions;
}
