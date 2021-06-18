import 'package:dojin_hub/domain_model/product/edition.dart';
import 'package:dojin_hub/domain_model/product/product.dart';
import 'package:dojin_hub/flamework/model_controller_type.dart';
import 'package:dojin_hub/flamework/model_type.dart';
import 'package:dojin_hub/repository/products_repository.dart';
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
  final ProductRepository _productRepository;

  ProductStorageController(this._productRepository) : super(ProductStorage());

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
