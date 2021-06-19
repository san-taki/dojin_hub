import 'package:dojin_hub/domain/entity/dojin_event.dart';
import 'package:dojin_hub/domain/entity/outsourcer.dart';
import 'package:dojin_hub/domain/entity/person.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_status.freezed.dart';

@freezed
class BookStatus with _$BookStatus {
  // 自宅在庫
  const factory BookStatus.homeStock() = _HomeStock;
  // 委託先在庫
  const factory BookStatus.outsourcerStock({
    required Outsourcer outsourcer,
  }) = _OutsourcerStock;
  // 任意保管先の在庫
  const factory BookStatus.extraStock({
    required String label,
  }) = _ExtraStock;
  // 委託販売済み
  const factory BookStatus.soldByOutsourcer({
    required Outsourcer outsourcer,
  }) = _SoldByOutsourcer;
  // 即売会販売済み
  const factory BookStatus.soldAtDojinEvent({
    required DojinEvent dojinEvent,
  }) = _SoldAtDojinEvent;
  // 無料配布済み
  const factory BookStatus.freeDistribution({
    required DojinEvent dojinEvent,
    required Parson parson,
  }) = _FreeDistribution;
}
