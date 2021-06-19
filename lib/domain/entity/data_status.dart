import 'package:dojin_hub/domain/error/app_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_status.freezed.dart';

@freezed
class DataStatus with _$DataStatus {
  const DataStatus._();
  const factory DataStatus.blank() = _Blank;
  const factory DataStatus.success() = _Success;
  const factory DataStatus.error({
    required AppError error,
  }) = _Error;

  bool get isBlank => this is _Blank;
  bool get isSuccess => this is _Success;
  bool get isError => this is _Error;
}