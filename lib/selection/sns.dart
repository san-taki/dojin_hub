import 'package:freezed_annotation/freezed_annotation.dart';

part 'sns.freezed.dart';

@freezed
class Sns with _$Sns {
  const factory Sns.twitter({
    required String id,
  }) = _Twitter;
  const factory Sns.line({
    required String id,
  }) = _Line;
  const factory Sns.extra({
    required String label,
    required String id,
  }) = _Extra;
}
