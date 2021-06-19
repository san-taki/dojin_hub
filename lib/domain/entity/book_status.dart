import 'package:dojin_hub/domain/entity/dojin_event.dart';
import 'package:dojin_hub/domain/entity/outsourcer.dart';
import 'package:dojin_hub/domain/entity/price.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_status.freezed.dart';

@freezed
class BookStatus with _$BookStatus {
  const BookStatus._();
  // 自宅在庫
  const factory BookStatus.homeStock() = _HomeStock;
  // 委託先在庫
  const factory BookStatus.outsourcerStock({
    required Outsourcer outsourcer,
    required OutsourcingPrice price,
  }) = _OutsourcerStock;
  // 任意保管先の在庫
  const factory BookStatus.extraStock({
    required String label,
  }) = _ExtraStock;
  // 委託販売済み
  const factory BookStatus.soldByOutsourcer({
    required Outsourcer outsourcer,
    required OutsourcingPrice price,
  }) = _SoldByOutsourcer;
  // 即売会販売済み
  const factory BookStatus.soldAtDojinEvent({
    required DojinEvent dojinEvent,
    required Price price,
  }) = _SoldAtDojinEvent;
  // 無料配布済み
  const factory BookStatus.freeDistribution({
    required DojinEvent dojinEvent,
  }) = _FreeDistribution;

  bool get isSold => this.when(
        homeStock: () => false,
        outsourcerStock: (_, __) => false,
        extraStock: (_) => false,
        soldByOutsourcer:  (_, __) => true,
        soldAtDojinEvent:  (_, __) => true,
        freeDistribution:  (_) => true,
      );
}
