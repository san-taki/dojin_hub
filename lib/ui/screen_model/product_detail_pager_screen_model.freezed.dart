// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product_detail_pager_screen_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductDetailPagerScreenModelTearOff {
  const _$ProductDetailPagerScreenModelTearOff();

  _ProductDetailPagerScreenModel call(
      {required List<Product> products,
      required PageController pageController}) {
    return _ProductDetailPagerScreenModel(
      products: products,
      pageController: pageController,
    );
  }
}

/// @nodoc
const $ProductDetailPagerScreenModel = _$ProductDetailPagerScreenModelTearOff();

/// @nodoc
mixin _$ProductDetailPagerScreenModel {
  List<Product> get products => throw _privateConstructorUsedError;
  PageController get pageController => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailPagerScreenModelCopyWith<ProductDetailPagerScreenModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailPagerScreenModelCopyWith<$Res> {
  factory $ProductDetailPagerScreenModelCopyWith(
          ProductDetailPagerScreenModel value,
          $Res Function(ProductDetailPagerScreenModel) then) =
      _$ProductDetailPagerScreenModelCopyWithImpl<$Res>;
  $Res call({List<Product> products, PageController pageController});
}

/// @nodoc
class _$ProductDetailPagerScreenModelCopyWithImpl<$Res>
    implements $ProductDetailPagerScreenModelCopyWith<$Res> {
  _$ProductDetailPagerScreenModelCopyWithImpl(this._value, this._then);

  final ProductDetailPagerScreenModel _value;
  // ignore: unused_field
  final $Res Function(ProductDetailPagerScreenModel) _then;

  @override
  $Res call({
    Object? products = freezed,
    Object? pageController = freezed,
  }) {
    return _then(_value.copyWith(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      pageController: pageController == freezed
          ? _value.pageController
          : pageController // ignore: cast_nullable_to_non_nullable
              as PageController,
    ));
  }
}

/// @nodoc
abstract class _$ProductDetailPagerScreenModelCopyWith<$Res>
    implements $ProductDetailPagerScreenModelCopyWith<$Res> {
  factory _$ProductDetailPagerScreenModelCopyWith(
          _ProductDetailPagerScreenModel value,
          $Res Function(_ProductDetailPagerScreenModel) then) =
      __$ProductDetailPagerScreenModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> products, PageController pageController});
}

/// @nodoc
class __$ProductDetailPagerScreenModelCopyWithImpl<$Res>
    extends _$ProductDetailPagerScreenModelCopyWithImpl<$Res>
    implements _$ProductDetailPagerScreenModelCopyWith<$Res> {
  __$ProductDetailPagerScreenModelCopyWithImpl(
      _ProductDetailPagerScreenModel _value,
      $Res Function(_ProductDetailPagerScreenModel) _then)
      : super(_value, (v) => _then(v as _ProductDetailPagerScreenModel));

  @override
  _ProductDetailPagerScreenModel get _value =>
      super._value as _ProductDetailPagerScreenModel;

  @override
  $Res call({
    Object? products = freezed,
    Object? pageController = freezed,
  }) {
    return _then(_ProductDetailPagerScreenModel(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      pageController: pageController == freezed
          ? _value.pageController
          : pageController // ignore: cast_nullable_to_non_nullable
              as PageController,
    ));
  }
}

/// @nodoc

class _$_ProductDetailPagerScreenModel
    implements _ProductDetailPagerScreenModel {
  const _$_ProductDetailPagerScreenModel(
      {required this.products, required this.pageController});

  @override
  final List<Product> products;
  @override
  final PageController pageController;

  @override
  String toString() {
    return 'ProductDetailPagerScreenModel(products: $products, pageController: $pageController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductDetailPagerScreenModel &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)) &&
            (identical(other.pageController, pageController) ||
                const DeepCollectionEquality()
                    .equals(other.pageController, pageController)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(products) ^
      const DeepCollectionEquality().hash(pageController);

  @JsonKey(ignore: true)
  @override
  _$ProductDetailPagerScreenModelCopyWith<_ProductDetailPagerScreenModel>
      get copyWith => __$ProductDetailPagerScreenModelCopyWithImpl<
          _ProductDetailPagerScreenModel>(this, _$identity);
}

abstract class _ProductDetailPagerScreenModel
    implements ProductDetailPagerScreenModel {
  const factory _ProductDetailPagerScreenModel(
          {required List<Product> products,
          required PageController pageController}) =
      _$_ProductDetailPagerScreenModel;

  @override
  List<Product> get products => throw _privateConstructorUsedError;
  @override
  PageController get pageController => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductDetailPagerScreenModelCopyWith<_ProductDetailPagerScreenModel>
      get copyWith => throw _privateConstructorUsedError;
}
