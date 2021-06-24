// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product_detail_screen_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductDetailScreenModelTearOff {
  const _$ProductDetailScreenModelTearOff();

  _ProductDetailScreenModel call(
      {required Product product,
      required ProductStoreController productStoreController,
      bool isEditing = false}) {
    return _ProductDetailScreenModel(
      product: product,
      productStoreController: productStoreController,
      isEditing: isEditing,
    );
  }
}

/// @nodoc
const $ProductDetailScreenModel = _$ProductDetailScreenModelTearOff();

/// @nodoc
mixin _$ProductDetailScreenModel {
  Product get product => throw _privateConstructorUsedError;
  ProductStoreController get productStoreController =>
      throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailScreenModelCopyWith<ProductDetailScreenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailScreenModelCopyWith<$Res> {
  factory $ProductDetailScreenModelCopyWith(ProductDetailScreenModel value,
          $Res Function(ProductDetailScreenModel) then) =
      _$ProductDetailScreenModelCopyWithImpl<$Res>;
  $Res call(
      {Product product,
      ProductStoreController productStoreController,
      bool isEditing});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductDetailScreenModelCopyWithImpl<$Res>
    implements $ProductDetailScreenModelCopyWith<$Res> {
  _$ProductDetailScreenModelCopyWithImpl(this._value, this._then);

  final ProductDetailScreenModel _value;
  // ignore: unused_field
  final $Res Function(ProductDetailScreenModel) _then;

  @override
  $Res call({
    Object? product = freezed,
    Object? productStoreController = freezed,
    Object? isEditing = freezed,
  }) {
    return _then(_value.copyWith(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      productStoreController: productStoreController == freezed
          ? _value.productStoreController
          : productStoreController // ignore: cast_nullable_to_non_nullable
              as ProductStoreController,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$ProductDetailScreenModelCopyWith<$Res>
    implements $ProductDetailScreenModelCopyWith<$Res> {
  factory _$ProductDetailScreenModelCopyWith(_ProductDetailScreenModel value,
          $Res Function(_ProductDetailScreenModel) then) =
      __$ProductDetailScreenModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {Product product,
      ProductStoreController productStoreController,
      bool isEditing});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$ProductDetailScreenModelCopyWithImpl<$Res>
    extends _$ProductDetailScreenModelCopyWithImpl<$Res>
    implements _$ProductDetailScreenModelCopyWith<$Res> {
  __$ProductDetailScreenModelCopyWithImpl(_ProductDetailScreenModel _value,
      $Res Function(_ProductDetailScreenModel) _then)
      : super(_value, (v) => _then(v as _ProductDetailScreenModel));

  @override
  _ProductDetailScreenModel get _value =>
      super._value as _ProductDetailScreenModel;

  @override
  $Res call({
    Object? product = freezed,
    Object? productStoreController = freezed,
    Object? isEditing = freezed,
  }) {
    return _then(_ProductDetailScreenModel(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      productStoreController: productStoreController == freezed
          ? _value.productStoreController
          : productStoreController // ignore: cast_nullable_to_non_nullable
              as ProductStoreController,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProductDetailScreenModel implements _ProductDetailScreenModel {
  const _$_ProductDetailScreenModel(
      {required this.product,
      required this.productStoreController,
      this.isEditing = false});

  @override
  final Product product;
  @override
  final ProductStoreController productStoreController;
  @JsonKey(defaultValue: false)
  @override
  final bool isEditing;

  @override
  String toString() {
    return 'ProductDetailScreenModel(product: $product, productStoreController: $productStoreController, isEditing: $isEditing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductDetailScreenModel &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.productStoreController, productStoreController) ||
                const DeepCollectionEquality().equals(
                    other.productStoreController, productStoreController)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(productStoreController) ^
      const DeepCollectionEquality().hash(isEditing);

  @JsonKey(ignore: true)
  @override
  _$ProductDetailScreenModelCopyWith<_ProductDetailScreenModel> get copyWith =>
      __$ProductDetailScreenModelCopyWithImpl<_ProductDetailScreenModel>(
          this, _$identity);
}

abstract class _ProductDetailScreenModel implements ProductDetailScreenModel {
  const factory _ProductDetailScreenModel(
      {required Product product,
      required ProductStoreController productStoreController,
      bool isEditing}) = _$_ProductDetailScreenModel;

  @override
  Product get product => throw _privateConstructorUsedError;
  @override
  ProductStoreController get productStoreController =>
      throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductDetailScreenModelCopyWith<_ProductDetailScreenModel> get copyWith =>
      throw _privateConstructorUsedError;
}
