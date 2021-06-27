import 'package:dojin_hub/domain/entity/currency.dart';
import 'package:dojin_hub/domain/entity/tax_rate.dart';

class Price {
  final Currency currency;
  final TaxRate taxRate;
  final int value;

  Price({
    required this.currency,
    required this.taxRate,
    required this.value,
  });
}

class OutsourcingPrice implements Price {
  @override
  Currency currency;

  @override
  TaxRate taxRate;

  @override
  int value;

  int wholesaleRatio;

  OutsourcingPrice({
    required this.currency,
    required this.taxRate,
    required this.value,
    required this.wholesaleRatio,
  }) {
    assert(wholesaleRatio > 1 && wholesaleRatio < 100);
  }
}
