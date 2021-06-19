import 'package:dojin_hub/domain/entity/product.dart';
import 'package:dojin_hub/flamework/model_controller_type.dart';
import 'package:dojin_hub/flamework/model_type.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail_pager_screen_model.freezed.dart';

@freezed
class ProductDetailPagerScreenModel extends ModelType
    with _$ProductDetailPagerScreenModel {
  const factory ProductDetailPagerScreenModel({
    required List<Product> products,
    required PageController pageController,
  }) = _ProductDetailPagerScreenModel;
}

class ProductDetailPagerScreenModelController
    extends ModelControllerType<ProductDetailPagerScreenModel> {
  ProductDetailPagerScreenModelController(ProductDetailPagerScreenModel model)
      : super(model);
}
