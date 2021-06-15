// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product_archive.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductArchiveTearOff {
  const _$ProductArchiveTearOff();

  _ProductArchive call({List<Product> products = const []}) {
    return _ProductArchive(
      products: products,
    );
  }
}

/// @nodoc
const $ProductArchive = _$ProductArchiveTearOff();

/// @nodoc
mixin _$ProductArchive {
  List<Product> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductArchiveCopyWith<ProductArchive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductArchiveCopyWith<$Res> {
  factory $ProductArchiveCopyWith(
          ProductArchive value, $Res Function(ProductArchive) then) =
      _$ProductArchiveCopyWithImpl<$Res>;
  $Res call({List<Product> products});
}

/// @nodoc
class _$ProductArchiveCopyWithImpl<$Res>
    implements $ProductArchiveCopyWith<$Res> {
  _$ProductArchiveCopyWithImpl(this._value, this._then);

  final ProductArchive _value;
  // ignore: unused_field
  final $Res Function(ProductArchive) _then;

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
abstract class _$ProductArchiveCopyWith<$Res>
    implements $ProductArchiveCopyWith<$Res> {
  factory _$ProductArchiveCopyWith(
          _ProductArchive value, $Res Function(_ProductArchive) then) =
      __$ProductArchiveCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> products});
}

/// @nodoc
class __$ProductArchiveCopyWithImpl<$Res>
    extends _$ProductArchiveCopyWithImpl<$Res>
    implements _$ProductArchiveCopyWith<$Res> {
  __$ProductArchiveCopyWithImpl(
      _ProductArchive _value, $Res Function(_ProductArchive) _then)
      : super(_value, (v) => _then(v as _ProductArchive));

  @override
  _ProductArchive get _value => super._value as _ProductArchive;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_ProductArchive(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_ProductArchive implements _ProductArchive {
  const _$_ProductArchive({this.products = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<Product> products;

  @override
  String toString() {
    return 'ProductArchive(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductArchive &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(products);

  @JsonKey(ignore: true)
  @override
  _$ProductArchiveCopyWith<_ProductArchive> get copyWith =>
      __$ProductArchiveCopyWithImpl<_ProductArchive>(this, _$identity);
}

abstract class _ProductArchive implements ProductArchive {
  const factory _ProductArchive({List<Product> products}) = _$_ProductArchive;

  @override
  List<Product> get products => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductArchiveCopyWith<_ProductArchive> get copyWith =>
      throw _privateConstructorUsedError;
}
