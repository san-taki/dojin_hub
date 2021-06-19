// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product_list_screen_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductListScreenModelTearOff {
  const _$ProductListScreenModelTearOff();

  _ProductListScreenModel call({required List<Product> products}) {
    return _ProductListScreenModel(
      products: products,
    );
  }
}

/// @nodoc
const $ProductListScreenModel = _$ProductListScreenModelTearOff();

/// @nodoc
mixin _$ProductListScreenModel {
  List<Product> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductListScreenModelCopyWith<ProductListScreenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListScreenModelCopyWith<$Res> {
  factory $ProductListScreenModelCopyWith(ProductListScreenModel value,
          $Res Function(ProductListScreenModel) then) =
      _$ProductListScreenModelCopyWithImpl<$Res>;
  $Res call({List<Product> products});
}

/// @nodoc
class _$ProductListScreenModelCopyWithImpl<$Res>
    implements $ProductListScreenModelCopyWith<$Res> {
  _$ProductListScreenModelCopyWithImpl(this._value, this._then);

  final ProductListScreenModel _value;
  // ignore: unused_field
  final $Res Function(ProductListScreenModel) _then;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
abstract class _$ProductListScreenModelCopyWith<$Res>
    implements $ProductListScreenModelCopyWith<$Res> {
  factory _$ProductListScreenModelCopyWith(_ProductListScreenModel value,
          $Res Function(_ProductListScreenModel) then) =
      __$ProductListScreenModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> products});
}

/// @nodoc
class __$ProductListScreenModelCopyWithImpl<$Res>
    extends _$ProductListScreenModelCopyWithImpl<$Res>
    implements _$ProductListScreenModelCopyWith<$Res> {
  __$ProductListScreenModelCopyWithImpl(_ProductListScreenModel _value,
      $Res Function(_ProductListScreenModel) _then)
      : super(_value, (v) => _then(v as _ProductListScreenModel));

  @override
  _ProductListScreenModel get _value => super._value as _ProductListScreenModel;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_ProductListScreenModel(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_ProductListScreenModel implements _ProductListScreenModel {
  const _$_ProductListScreenModel({required this.products});

  @override
  final List<Product> products;

  @override
  String toString() {
    return 'ProductListScreenModel(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductListScreenModel &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(products);

  @JsonKey(ignore: true)
  @override
  _$ProductListScreenModelCopyWith<_ProductListScreenModel> get copyWith =>
      __$ProductListScreenModelCopyWithImpl<_ProductListScreenModel>(
          this, _$identity);
}

abstract class _ProductListScreenModel implements ProductListScreenModel {
  const factory _ProductListScreenModel({required List<Product> products}) =
      _$_ProductListScreenModel;

  @override
  List<Product> get products => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductListScreenModelCopyWith<_ProductListScreenModel> get copyWith =>
      throw _privateConstructorUsedError;
}
