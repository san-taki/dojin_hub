import 'package:dojin_hub/domain/entity/sns.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.freezed.dart';

@freezed
class Parson with _$Parson {
  const factory Parson({
    required String name,
    required Sns? sns,
  }) = _Parson;
}
