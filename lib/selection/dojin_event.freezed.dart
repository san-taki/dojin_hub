// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dojin_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DojinEventTearOff {
  const _$DojinEventTearOff();

  _SpotSale spotSale(
      {required String title,
      required DateTime startDateTime,
      required DateTime endDateTime,
      required List<Product> preparedProducts,
      required List<Product> unSoldProducts}) {
    return _SpotSale(
      title: title,
      startDateTime: startDateTime,
      endDateTime: endDateTime,
      preparedProducts: preparedProducts,
      unSoldProducts: unSoldProducts,
    );
  }

  _Extra extra(
      {required String title, required List<Product> preparedProducts}) {
    return _Extra(
      title: title,
      preparedProducts: preparedProducts,
    );
  }
}

/// @nodoc
const $DojinEvent = _$DojinEventTearOff();

/// @nodoc
mixin _$DojinEvent {
  String get title => throw _privateConstructorUsedError; // 用意した本
  List<Product> get preparedProducts => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title,
            DateTime startDateTime,
            DateTime endDateTime,
            List<Product> preparedProducts,
            List<Product> unSoldProducts)
        spotSale,
    required TResult Function(String title, List<Product> preparedProducts)
        extra,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, DateTime startDateTime, DateTime endDateTime,
            List<Product> preparedProducts, List<Product> unSoldProducts)?
        spotSale,
    TResult Function(String title, List<Product> preparedProducts)? extra,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SpotSale value) spotSale,
    required TResult Function(_Extra value) extra,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SpotSale value)? spotSale,
    TResult Function(_Extra value)? extra,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DojinEventCopyWith<DojinEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DojinEventCopyWith<$Res> {
  factory $DojinEventCopyWith(
          DojinEvent value, $Res Function(DojinEvent) then) =
      _$DojinEventCopyWithImpl<$Res>;
  $Res call({String title, List<Product> preparedProducts});
}

/// @nodoc
class _$DojinEventCopyWithImpl<$Res> implements $DojinEventCopyWith<$Res> {
  _$DojinEventCopyWithImpl(this._value, this._then);

  final DojinEvent _value;
  // ignore: unused_field
  final $Res Function(DojinEvent) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? preparedProducts = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      preparedProducts: preparedProducts == freezed
          ? _value.preparedProducts
          : preparedProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
abstract class _$SpotSaleCopyWith<$Res> implements $DojinEventCopyWith<$Res> {
  factory _$SpotSaleCopyWith(_SpotSale value, $Res Function(_SpotSale) then) =
      __$SpotSaleCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      DateTime startDateTime,
      DateTime endDateTime,
      List<Product> preparedProducts,
      List<Product> unSoldProducts});
}

/// @nodoc
class __$SpotSaleCopyWithImpl<$Res> extends _$DojinEventCopyWithImpl<$Res>
    implements _$SpotSaleCopyWith<$Res> {
  __$SpotSaleCopyWithImpl(_SpotSale _value, $Res Function(_SpotSale) _then)
      : super(_value, (v) => _then(v as _SpotSale));

  @override
  _SpotSale get _value => super._value as _SpotSale;

  @override
  $Res call({
    Object? title = freezed,
    Object? startDateTime = freezed,
    Object? endDateTime = freezed,
    Object? preparedProducts = freezed,
    Object? unSoldProducts = freezed,
  }) {
    return _then(_SpotSale(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startDateTime: startDateTime == freezed
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateTime: endDateTime == freezed
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      {required this.title,
      required this.startDateTime,
      required this.endDateTime,
      required this.preparedProducts,
      required this.unSoldProducts})
      : assert(preparedProducts.length < unSoldProducts.length,
            'preparedProducts < unSoldProducts');

  @override
  final String title;
  @override
  final DateTime startDateTime;
  @override
  final DateTime endDateTime;
  @override // 用意した本
  final List<Product> preparedProducts;
  @override // 売れ残り本
  final List<Product> unSoldProducts;

  @override
  String toString() {
    return 'DojinEvent.spotSale(title: $title, startDateTime: $startDateTime, endDateTime: $endDateTime, preparedProducts: $preparedProducts, unSoldProducts: $unSoldProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SpotSale &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.startDateTime, startDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.startDateTime, startDateTime)) &&
            (identical(other.endDateTime, endDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.endDateTime, endDateTime)) &&
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
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(startDateTime) ^
      const DeepCollectionEquality().hash(endDateTime) ^
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
            String title,
            DateTime startDateTime,
            DateTime endDateTime,
            List<Product> preparedProducts,
            List<Product> unSoldProducts)
        spotSale,
    required TResult Function(String title, List<Product> preparedProducts)
        extra,
  }) {
    return spotSale(
        title, startDateTime, endDateTime, preparedProducts, unSoldProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, DateTime startDateTime, DateTime endDateTime,
            List<Product> preparedProducts, List<Product> unSoldProducts)?
        spotSale,
    TResult Function(String title, List<Product> preparedProducts)? extra,
    required TResult orElse(),
  }) {
    if (spotSale != null) {
      return spotSale(
          title, startDateTime, endDateTime, preparedProducts, unSoldProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SpotSale value) spotSale,
    required TResult Function(_Extra value) extra,
  }) {
    return spotSale(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SpotSale value)? spotSale,
    TResult Function(_Extra value)? extra,
    required TResult orElse(),
  }) {
    if (spotSale != null) {
      return spotSale(this);
    }
    return orElse();
  }
}

abstract class _SpotSale implements DojinEvent {
  const factory _SpotSale(
      {required String title,
      required DateTime startDateTime,
      required DateTime endDateTime,
      required List<Product> preparedProducts,
      required List<Product> unSoldProducts}) = _$_SpotSale;

  @override
  String get title => throw _privateConstructorUsedError;
  DateTime get startDateTime => throw _privateConstructorUsedError;
  DateTime get endDateTime => throw _privateConstructorUsedError;
  @override // 用意した本
  List<Product> get preparedProducts =>
      throw _privateConstructorUsedError; // 売れ残り本
  List<Product> get unSoldProducts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SpotSaleCopyWith<_SpotSale> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ExtraCopyWith<$Res> implements $DojinEventCopyWith<$Res> {
  factory _$ExtraCopyWith(_Extra value, $Res Function(_Extra) then) =
      __$ExtraCopyWithImpl<$Res>;
  @override
  $Res call({String title, List<Product> preparedProducts});
}

/// @nodoc
class __$ExtraCopyWithImpl<$Res> extends _$DojinEventCopyWithImpl<$Res>
    implements _$ExtraCopyWith<$Res> {
  __$ExtraCopyWithImpl(_Extra _value, $Res Function(_Extra) _then)
      : super(_value, (v) => _then(v as _Extra));

  @override
  _Extra get _value => super._value as _Extra;

  @override
  $Res call({
    Object? title = freezed,
    Object? preparedProducts = freezed,
  }) {
    return _then(_Extra(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      preparedProducts: preparedProducts == freezed
          ? _value.preparedProducts
          : preparedProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_Extra implements _Extra {
  const _$_Extra({required this.title, required this.preparedProducts});

  @override
  final String title;
  @override
  final List<Product> preparedProducts;

  @override
  String toString() {
    return 'DojinEvent.extra(title: $title, preparedProducts: $preparedProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Extra &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.preparedProducts, preparedProducts) ||
                const DeepCollectionEquality()
                    .equals(other.preparedProducts, preparedProducts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(preparedProducts);

  @JsonKey(ignore: true)
  @override
  _$ExtraCopyWith<_Extra> get copyWith =>
      __$ExtraCopyWithImpl<_Extra>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title,
            DateTime startDateTime,
            DateTime endDateTime,
            List<Product> preparedProducts,
            List<Product> unSoldProducts)
        spotSale,
    required TResult Function(String title, List<Product> preparedProducts)
        extra,
  }) {
    return extra(title, preparedProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, DateTime startDateTime, DateTime endDateTime,
            List<Product> preparedProducts, List<Product> unSoldProducts)?
        spotSale,
    TResult Function(String title, List<Product> preparedProducts)? extra,
    required TResult orElse(),
  }) {
    if (extra != null) {
      return extra(title, preparedProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SpotSale value) spotSale,
    required TResult Function(_Extra value) extra,
  }) {
    return extra(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SpotSale value)? spotSale,
    TResult Function(_Extra value)? extra,
    required TResult orElse(),
  }) {
    if (extra != null) {
      return extra(this);
    }
    return orElse();
  }
}

abstract class _Extra implements DojinEvent {
  const factory _Extra(
      {required String title,
      required List<Product> preparedProducts}) = _$_Extra;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  List<Product> get preparedProducts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExtraCopyWith<_Extra> get copyWith => throw _privateConstructorUsedError;
}
