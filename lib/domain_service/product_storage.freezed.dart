// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product_storage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductStorageTearOff {
  const _$ProductStorageTearOff();

  _ProductStorage call({List<Product> products = const []}) {
    return _ProductStorage(
      products: products,
    );
  }
}

/// @nodoc
const $ProductStorage = _$ProductStorageTearOff();

/// @nodoc
mixin _$ProductStorage {
  List<Product> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStorageCopyWith<ProductStorage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStorageCopyWith<$Res> {
  factory $ProductStorageCopyWith(
          ProductStorage value, $Res Function(ProductStorage) then) =
      _$ProductStorageCopyWithImpl<$Res>;
  $Res call({List<Product> products});
}

/// @nodoc
class _$ProductStorageCopyWithImpl<$Res>
    implements $ProductStorageCopyWith<$Res> {
  _$ProductStorageCopyWithImpl(this._value, this._then);

  final ProductStorage _value;
  // ignore: unused_field
  final $Res Function(ProductStorage) _then;

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
abstract class _$ProductStorageCopyWith<$Res>
    implements $ProductStorageCopyWith<$Res> {
  factory _$ProductStorageCopyWith(
          _ProductStorage value, $Res Function(_ProductStorage) then) =
      __$ProductStorageCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> products});
}

/// @nodoc
class __$ProductStorageCopyWithImpl<$Res>
    extends _$ProductStorageCopyWithImpl<$Res>
    implements _$ProductStorageCopyWith<$Res> {
  __$ProductStorageCopyWithImpl(
      _ProductStorage _value, $Res Function(_ProductStorage) _then)
      : super(_value, (v) => _then(v as _ProductStorage));

  @override
  _ProductStorage get _value => super._value as _ProductStorage;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_ProductStorage(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_ProductStorage implements _ProductStorage {
  const _$_ProductStorage({this.products = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<Product> products;

  @override
  String toString() {
    return 'ProductStorage(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductStorage &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(products);

  @JsonKey(ignore: true)
  @override
  _$ProductStorageCopyWith<_ProductStorage> get copyWith =>
      __$ProductStorageCopyWithImpl<_ProductStorage>(this, _$identity);
}

abstract class _ProductStorage implements ProductStorage {
  const factory _ProductStorage({List<Product> products}) = _$_ProductStorage;

  @override
  List<Product> get products => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductStorageCopyWith<_ProductStorage> get copyWith =>
      throw _privateConstructorUsedError;
}
