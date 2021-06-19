// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductStoreTearOff {
  const _$ProductStoreTearOff();

  _ProductStore call({List<Product> products = const []}) {
    return _ProductStore(
      products: products,
    );
  }
}

/// @nodoc
const $ProductStore = _$ProductStoreTearOff();

/// @nodoc
mixin _$ProductStore {
  List<Product> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStoreCopyWith<ProductStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStoreCopyWith<$Res> {
  factory $ProductStoreCopyWith(
          ProductStore value, $Res Function(ProductStore) then) =
      _$ProductStoreCopyWithImpl<$Res>;
  $Res call({List<Product> products});
}

/// @nodoc
class _$ProductStoreCopyWithImpl<$Res> implements $ProductStoreCopyWith<$Res> {
  _$ProductStoreCopyWithImpl(this._value, this._then);

  final ProductStore _value;
  // ignore: unused_field
  final $Res Function(ProductStore) _then;

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
abstract class _$ProductStoreCopyWith<$Res>
    implements $ProductStoreCopyWith<$Res> {
  factory _$ProductStoreCopyWith(
          _ProductStore value, $Res Function(_ProductStore) then) =
      __$ProductStoreCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> products});
}

/// @nodoc
class __$ProductStoreCopyWithImpl<$Res> extends _$ProductStoreCopyWithImpl<$Res>
    implements _$ProductStoreCopyWith<$Res> {
  __$ProductStoreCopyWithImpl(
      _ProductStore _value, $Res Function(_ProductStore) _then)
      : super(_value, (v) => _then(v as _ProductStore));

  @override
  _ProductStore get _value => super._value as _ProductStore;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_ProductStore(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_ProductStore implements _ProductStore {
  const _$_ProductStore({this.products = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<Product> products;

  @override
  String toString() {
    return 'ProductStore(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductStore &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(products);

  @JsonKey(ignore: true)
  @override
  _$ProductStoreCopyWith<_ProductStore> get copyWith =>
      __$ProductStoreCopyWithImpl<_ProductStore>(this, _$identity);
}

abstract class _ProductStore implements ProductStore {
  const factory _ProductStore({List<Product> products}) = _$_ProductStore;

  @override
  List<Product> get products => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductStoreCopyWith<_ProductStore> get copyWith =>
      throw _privateConstructorUsedError;
}
