import 'package:dojin_hub/entity/product.dart';
import 'package:dojin_hub/flamework/model_controller_type.dart';
import 'package:dojin_hub/flamework/model_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_storage.freezed.dart';

// 在庫
@freezed
class ProductStorage extends ModelType with _$ProductStorage {
  const factory ProductStorage({
    @Default([]) List<Product> products,
  }) = _ProductStorage;
}

class ProductStorageController extends ModelControllerType<ProductStorage> {
  ProductStorageController() : super(ProductStorage());

  void fetch() {
    // TODO: 仮

  }

  void addProduct(Product newProduct) {
    state = state.copyWith(
      products: state.products.toList(growable: true)..add(newProduct),
    );
  }
}
