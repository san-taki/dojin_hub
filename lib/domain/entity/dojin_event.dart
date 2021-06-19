import 'package:dojin_hub/domain/entity/dojin_event_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dojin_event.freezed.dart';

@freezed
class DojinEvent with _$DojinEvent {
  const factory DojinEvent({
    required String title,
    DateTime? startDateTime,
    DateTime? endDateTime,
    DojinEventResult? result,
  }) = _DojinEvent;
}
