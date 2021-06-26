import 'package:intl/intl.dart';

class TextUtil {
  static String toPriceLabel(int? price) =>
      NumberFormat('#,##0', 'ja_JP').format(price);
}
