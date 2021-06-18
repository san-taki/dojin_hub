import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency.freezed.dart';

@freezed
abstract class Currency with _$Currency {
  const factory Currency.jpy() = _JPY;
  const factory Currency.extra({
    required String label,
  }) = _Extra;
}
