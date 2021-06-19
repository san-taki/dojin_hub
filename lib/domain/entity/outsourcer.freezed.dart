// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'outsourcer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OutsourcerTearOff {
  const _$OutsourcerTearOff();

  _Outsourcer call(
      {required String shopId,
      required String name,
      required List<Product> product}) {
    return _Outsourcer(
      shopId: shopId,
      name: name,
      product: product,
    );
  }
}

/// @nodoc
const $Outsourcer = _$OutsourcerTearOff();

/// @nodoc
mixin _$Outsourcer {
  String get shopId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Product> get product => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OutsourcerCopyWith<Outsourcer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutsourcerCopyWith<$Res> {
  factory $OutsourcerCopyWith(
          Outsourcer value, $Res Function(Outsourcer) then) =
      _$OutsourcerCopyWithImpl<$Res>;
  $Res call({String shopId, String name, List<Product> product});
}

/// @nodoc
class _$OutsourcerCopyWithImpl<$Res> implements $OutsourcerCopyWith<$Res> {
  _$OutsourcerCopyWithImpl(this._value, this._then);

  final Outsourcer _value;
  // ignore: unused_field
  final $Res Function(Outsourcer) _then;

  @override
  $Res call({
    Object? shopId = freezed,
    Object? name = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
abstract class _$OutsourcerCopyWith<$Res> implements $OutsourcerCopyWith<$Res> {
  factory _$OutsourcerCopyWith(
          _Outsourcer value, $Res Function(_Outsourcer) then) =
      __$OutsourcerCopyWithImpl<$Res>;
  @override
  $Res call({String shopId, String name, List<Product> product});
}

/// @nodoc
class __$OutsourcerCopyWithImpl<$Res> extends _$OutsourcerCopyWithImpl<$Res>
    implements _$OutsourcerCopyWith<$Res> {
  __$OutsourcerCopyWithImpl(
      _Outsourcer _value, $Res Function(_Outsourcer) _then)
      : super(_value, (v) => _then(v as _Outsourcer));

  @override
  _Outsourcer get _value => super._value as _Outsourcer;

  @override
  $Res call({
    Object? shopId = freezed,
    Object? name = freezed,
    Object? product = freezed,
  }) {
    return _then(_Outsourcer(
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_Outsourcer implements _Outsourcer {
  const _$_Outsourcer(
      {required this.shopId, required this.name, required this.product});

  @override
  final String shopId;
  @override
  final String name;
  @override
  final List<Product> product;

  @override
  String toString() {
    return 'Outsourcer(shopId: $shopId, name: $name, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Outsourcer &&
            (identical(other.shopId, shopId) ||
                const DeepCollectionEquality().equals(other.shopId, shopId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality().equals(other.product, product)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(shopId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(product);

  @JsonKey(ignore: true)
  @override
  _$OutsourcerCopyWith<_Outsourcer> get copyWith =>
      __$OutsourcerCopyWithImpl<_Outsourcer>(this, _$identity);
}

abstract class _Outsourcer implements Outsourcer {
  const factory _Outsourcer(
      {required String shopId,
      required String name,
      required List<Product> product}) = _$_Outsourcer;

  @override
  String get shopId => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<Product> get product => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutsourcerCopyWith<_Outsourcer> get copyWith =>
      throw _privateConstructorUsedError;
}
