import 'package:dojin_hub/domain/entity/dojin_event.dart';
import 'package:dojin_hub/domain/entity/edition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const Product._();
  const factory Product({
    required String id,
    required String title,
    @Default('') String coverImagePath,
    @Default('') String backCoverImagePath,
    @Default([Edition(number: 1)]) List<Edition> editions,
    @Default([]) List<DojinEvent> atendedEvents,
  }) = _Product;

  bool soldOut() => editions.map((e) => e.soldOut).toList().contains(false);

  int get totalPublicationCount {
    var result = 0;
    editions.forEach(
      (e) => result = result + e.publicationCount,
    );
    return result;
  }

  int get stockCount {
    var result = 0;
    editions.forEach(
      (e) {
        if (e.homeStock != null) {
          result = result + e.homeStock!.count;
        }
        if (e.outSourcerStock != null) {
          result = result + e.outSourcerStock!.count;
        }
        if (e.extraStock != null) {
          result = result + e.extraStock!.count;
        }
      },
    );
    return result;
  }

  int get outsourcingCount {
    var result = 0;
    editions.forEach(
      (e) {
        if (e.outSourcerStock != null) {
          result = result + e.outSourcerStock!.count;
        }
      },
    );
    return result;
  }

  int get soldOutCount {
    var result = 0;
    editions.forEach(
      (e) {
        if (e.soldAtDojinEvent != null) {
          result = result + e.soldAtDojinEvent!.count;
        }
        if (e.soldByOutsourcer != null) {
          result = result + e.soldByOutsourcer!.count;
        }
      },
    );
    return result;
  }

  int get freeDistributionCount {
    var result = 0;
    editions.forEach(
      (e) {
        if (e.freeDistribution != null) {
          result = result + e.freeDistribution!.count;
        }
      },
    );
    return result;
  }
}
