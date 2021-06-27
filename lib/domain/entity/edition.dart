// 版データ
import 'package:dojin_hub/domain/entity/book.dart';
import 'package:dojin_hub/domain/entity/print_shop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edition.freezed.dart';

@freezed
class Edition with _$Edition {
  const Edition._();
  const factory Edition({
    required int number,
    int? page,
    PrintShop? printShop,
    int? printingCosts,
    DateTime? publicationDate,
    HomeStock? homeStock,
    OutSourcerStock? outSourcerStock,
    ExtraStock? extraStock,
    SoldByOutsourcer? soldByOutsourcer,
    SoldAtDojinEvent? soldAtDojinEvent,
    FreeDistribution? freeDistribution,
  }) = _Edition;

  String get numberString => number == 1 ? '初版' : '第$number版';

  // FIXME
  bool get soldOut {
    return _count(homeStock?.count) == 0 &&
        _count(outSourcerStock?.count) == 0 &&
        _count(extraStock?.count) == 0;
  }

  int get publicationCount =>
      _count(homeStock?.count) +
      _count(outSourcerStock?.count) +
      _count(extraStock?.count) +
      _count(soldByOutsourcer?.count) +
      _count(soldAtDojinEvent?.count) +
      _count(freeDistribution?.count);

  int _count(int? count) {
    return count ?? 0;
  }
}
