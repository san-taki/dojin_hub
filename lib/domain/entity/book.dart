import 'package:dojin_hub/domain/entity/dojin_event.dart';
import 'package:dojin_hub/domain/entity/outsourcer.dart';
import 'package:dojin_hub/domain/entity/price.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';

abstract class Book {}

// 自宅在庫
@freezed
class HomeStock extends Book with _$HomeStock {
  const factory HomeStock({
    required int count,
  }) = _HomeStock;
}

// 委託先在庫
@freezed
class OutSourcerStock extends Book with _$OutSourcerStock {
  const factory OutSourcerStock({
    required int count,
    required Outsourcer outsourcer,
    required OutsourcingPrice price,
  }) = _OutSourcerStock;
}

// 任意保管先の在庫
@freezed
class ExtraStock extends Book with _$ExtraStock {
  const factory ExtraStock({
    required int count,
    required String label,
  }) = _ExtraStock;
}

//   // 委託販売済み
@freezed
class SoldByOutsourcer extends Book with _$SoldByOutsourcer {
  const factory SoldByOutsourcer({
    required int count,
    required Outsourcer outsourcer,
    required OutsourcingPrice price,
  }) = _SoldByOutsourcer;
}

// 即売会販売済み
@freezed
class SoldAtDojinEvent extends Book with _$SoldAtDojinEvent {
  const factory SoldAtDojinEvent({
    required int count,
    required DojinEvent dojinEvent,
    required Price price,
  }) = _SoldAtDojinEvent;
}

//   // 無料配布済み
@freezed
class FreeDistribution extends Book with _$FreeDistribution {
  const factory FreeDistribution({
    required int count,
    required DojinEvent dojinEvent,
  }) = _FreeDistribution;
}