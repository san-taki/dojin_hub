import 'package:dojin_hub/domain/entity/product.dart';
import 'package:dojin_hub/flamework/model_controller_type.dart';
import 'package:dojin_hub/flamework/model_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list_screen_model.freezed.dart';

@freezed
class ProductListScreenModel extends ModelType with _$ProductListScreenModel {
  const factory ProductListScreenModel({
    required List<Product> products,
  }) = _ProductListScreenModel;
}

class ProductListScreenModelController
    extends ModelControllerType<ProductListScreenModel> {
  ProductListScreenModelController(ProductListScreenModel model) : super(model);
}
