import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tax_rate.freezed.dart';

@freezed
class TaxRate with _$TaxRate {
  const factory TaxRate.rate5() = _Rate5;
  const factory TaxRate.rate8() = _Rate8;
  const factory TaxRate.rate10() = _Rate10;
  const factory TaxRate.extra({
    required String label,
  }) = _RateExtra;
}
