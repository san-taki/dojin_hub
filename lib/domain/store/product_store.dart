import 'package:dojin_hub/domain/entity/edition.dart';
import 'package:dojin_hub/domain/entity/product.dart';
import 'package:dojin_hub/domain/repository/product_repository.dart';
import 'package:dojin_hub/flamework/model_controller_type.dart';
import 'package:dojin_hub/flamework/model_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_store.freezed.dart';

// 在庫
@freezed
class ProductStore extends ModelType with _$ProductStore {
  const factory ProductStore({
    @Default([]) List<Product> products,
  }) = _ProductStore;
}

class ProductStoreController
    extends ModelControllerType<ProductStore> {
  final ProductRepository _productRepository;

  ProductStoreController(this._productRepository)
      : super(ProductStore());

  void fetch() {
    state = state.copyWith(
      products: _productRepository.fetch(),
    );
  }

  void addProduct(Product newProduct) {
    state = state.copyWith(
      products: state.products.toList(growable: true)..add(newProduct),
    );
  }

  void updateEdition(String productId, Edition edition) {
    state = state.copyWith(
      products: state.products.map((p) {
        if (p.id == productId) {
          return Product(
            id: p.id,
            title: p.title,
            coverImagePath: p.coverImagePath,
            editions: p.editions.map((e) {
              if (e.number == edition.number) {
                return edition;
              } else {
                return e;
              }
            }).toList(),
          );
        } else {
          return p;
        }
      }).toList(),
    );
  }
}
