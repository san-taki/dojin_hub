import 'package:dojin_hub/domain/entity/pie_chart_item.dart';
import 'package:dojin_hub/domain/entity/product.dart';
import 'package:dojin_hub/domain/store/product_store.dart';
import 'package:dojin_hub/flamework/model_controller_type.dart';
import 'package:dojin_hub/flamework/model_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail_screen_model.freezed.dart';

@freezed
class ProductDetailScreenModel extends ModelType
    with _$ProductDetailScreenModel {
  const factory ProductDetailScreenModel({
    required Product product,
    @Default(0) int selectEditionIndex,
    required ProductStoreController productStoreController,
    @Default(false) bool isEditing,
  }) = _ProductDetailScreenModel;
}

class ProductDetailScreenModelController
    extends ModelControllerType<ProductDetailScreenModel> {
  ProductDetailScreenModelController(
    ProductDetailScreenModel model,
  ) : super(model);

  void updateCoverImagePath(String path) {
    state = state.copyWith(
      product: state.product.copyWith(
        coverImagePath: path,
      ),
    );
  }

  void togleIsEditing() {
    state = state.copyWith(
      isEditing: !state.isEditing,
    );
  }

  void selectEdition(int index) {
    state = state.copyWith(
      selectEditionIndex: index,
    );
  }

  List<PieChartItem> getPieChartSaleItems() {
    var total = state.product.totalPublicationCount;
    var e = state.product.editions[state.selectEditionIndex];
    var result = List<PieChartItem>.empty(growable: true);

    if (e.homeStock != null) {
      result.add(
        PieChartItem(label: '在庫', value: e.homeStock!.count / total * 100),
      );
    }
    if (e.outSourcerStock != null) {
      result.add(
        PieChartItem(label: '委託中', value: e.outSourcerStock!.count / total * 100),
      );
    }
    if (e.extraStock != null) {
      result.add(
        PieChartItem(label: '在庫(その他)', value: e.extraStock!.count / total * 100),
      );
    }
    if (e.soldAtDojinEvent != null) {
      result.add(
        PieChartItem(label: '販売済(イベント)', value: e.soldAtDojinEvent!.count / total * 100),
      );
    }
    if (e.soldByOutsourcer != null) {
      result.add(
        PieChartItem(label: '販売済み(委託)', value: e.soldByOutsourcer!.count / total * 100),
      );
    }
    if (e.freeDistribution != null) {
      result.add(
        PieChartItem(label: '無料頒布', value: e.freeDistribution!.count / total * 100),
      );
    }

    return result;
  }

  void delete() {}
}
