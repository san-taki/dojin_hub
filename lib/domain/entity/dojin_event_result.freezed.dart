// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dojin_event_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DojinEventResultTearOff {
  const _$DojinEventResultTearOff();

  _SpotSale spotSale(
      {required List<Product> preparedProducts,
      required List<Product> unSoldProducts}) {
    return _SpotSale(
      preparedProducts: preparedProducts,
      unSoldProducts: unSoldProducts,
    );
  }
}

/// @nodoc
const $DojinEventResult = _$DojinEventResultTearOff();

/// @nodoc
mixin _$DojinEventResult {
// 用意した本
  List<Product> get preparedProducts =>
      throw _privateConstructorUsedError; // 売れ残り本
  List<Product> get unSoldProducts => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Product> preparedProducts, List<Product> unSoldProducts)
        spotSale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Product> preparedProducts, List<Product> unSoldProducts)?
        spotSale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SpotSale value) spotSale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SpotSale value)? spotSale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DojinEventResultCopyWith<DojinEventResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DojinEventResultCopyWith<$Res> {
  factory $DojinEventResultCopyWith(
          DojinEventResult value, $Res Function(DojinEventResult) then) =
      _$DojinEventResultCopyWithImpl<$Res>;
  $Res call({List<Product> preparedProducts, List<Product> unSoldProducts});
}

/// @nodoc
class _$DojinEventResultCopyWithImpl<$Res>
    implements $DojinEventResultCopyWith<$Res> {
  _$DojinEventResultCopyWithImpl(this._value, this._then);

  final DojinEventResult _value;
  // ignore: unused_field
  final $Res Function(DojinEventResult) _then;

  @override
  $Res call({
    Object? preparedProducts = freezed,
    Object? unSoldProducts = freezed,
  }) {
    return _then(_value.copyWith(
      preparedProducts: preparedProducts == freezed
          ? _value.preparedProducts
          : preparedProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      unSoldProducts: unSoldProducts == freezed
          ? _value.unSoldProducts
          : unSoldProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
abstract class _$SpotSaleCopyWith<$Res>
    implements $DojinEventResultCopyWith<$Res> {
  factory _$SpotSaleCopyWith(_SpotSale value, $Res Function(_SpotSale) then) =
      __$SpotSaleCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> preparedProducts, List<Product> unSoldProducts});
}

/// @nodoc
class __$SpotSaleCopyWithImpl<$Res> extends _$DojinEventResultCopyWithImpl<$Res>
    implements _$SpotSaleCopyWith<$Res> {
  __$SpotSaleCopyWithImpl(_SpotSale _value, $Res Function(_SpotSale) _then)
      : super(_value, (v) => _then(v as _SpotSale));

  @override
  _SpotSale get _value => super._value as _SpotSale;

  @override
  $Res call({
    Object? preparedProducts = freezed,
    Object? unSoldProducts = freezed,
  }) {
    return _then(_SpotSale(
      preparedProducts: preparedProducts == freezed
          ? _value.preparedProducts
          : preparedProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      unSoldProducts: unSoldProducts == freezed
          ? _value.unSoldProducts
          : unSoldProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_SpotSale implements _SpotSale {
  const _$_SpotSale(
      {required this.preparedProducts, required this.unSoldProducts})
      : assert(preparedProducts.length < unSoldProducts.length,
            'preparedProducts < unSoldProducts');

  @override // 用意した本
  final List<Product> preparedProducts;
  @override // 売れ残り本
  final List<Product> unSoldProducts;

  @override
  String toString() {
    return 'DojinEventResult.spotSale(preparedProducts: $preparedProducts, unSoldProducts: $unSoldProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SpotSale &&
            (identical(other.preparedProducts, preparedProducts) ||
                const DeepCollectionEquality()
                    .equals(other.preparedProducts, preparedProducts)) &&
            (identical(other.unSoldProducts, unSoldProducts) ||
                const DeepCollectionEquality()
                    .equals(other.unSoldProducts, unSoldProducts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(preparedProducts) ^
      const DeepCollectionEquality().hash(unSoldProducts);

  @JsonKey(ignore: true)
  @override
  _$SpotSaleCopyWith<_SpotSale> get copyWith =>
      __$SpotSaleCopyWithImpl<_SpotSale>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Product> preparedProducts, List<Product> unSoldProducts)
        spotSale,
  }) {
    return spotSale(preparedProducts, unSoldProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Product> preparedProducts, List<Product> unSoldProducts)?
        spotSale,
    required TResult orElse(),
  }) {
    if (spotSale != null) {
      return spotSale(preparedProducts, unSoldProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SpotSale value) spotSale,
  }) {
    return spotSale(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SpotSale value)? spotSale,
    required TResult orElse(),
  }) {
    if (spotSale != null) {
      return spotSale(this);
    }
    return orElse();
  }
}

abstract class _SpotSale implements DojinEventResult {
  const factory _SpotSale(
      {required List<Product> preparedProducts,
      required List<Product> unSoldProducts}) = _$_SpotSale;

  @override // 用意した本
  List<Product> get preparedProducts => throw _privateConstructorUsedError;
  @override // 売れ残り本
  List<Product> get unSoldProducts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SpotSaleCopyWith<_SpotSale> get copyWith =>
      throw _privateConstructorUsedError;
}
