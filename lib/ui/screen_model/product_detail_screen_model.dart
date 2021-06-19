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
    required ProductStoreController productStoreController,
  }) = _ProductDetailScreenModel;
}

class ProductDetailScreenModelController
    extends ModelControllerType<ProductDetailScreenModel> {
  ProductDetailScreenModelController(ProductDetailScreenModel model)
      : super(model);

  void updateCoverImagePath(String path) {
    state = state.copyWith(
      product: state.product.copyWith(
        coverImagePath: path,
      ),
    );
  }

  void delete() {}
}
