// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_pie_chart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppPieChartModelTearOff {
  const _$AppPieChartModelTearOff();

  _AppPieChartModel call({int touchedIndex = 0, required Product product}) {
    return _AppPieChartModel(
      touchedIndex: touchedIndex,
      product: product,
    );
  }
}

/// @nodoc
const $AppPieChartModel = _$AppPieChartModelTearOff();

/// @nodoc
mixin _$AppPieChartModel {
  int get touchedIndex => throw _privateConstructorUsedError;
  Product get product => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppPieChartModelCopyWith<AppPieChartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPieChartModelCopyWith<$Res> {
  factory $AppPieChartModelCopyWith(
          AppPieChartModel value, $Res Function(AppPieChartModel) then) =
      _$AppPieChartModelCopyWithImpl<$Res>;
  $Res call({int touchedIndex, Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$AppPieChartModelCopyWithImpl<$Res>
    implements $AppPieChartModelCopyWith<$Res> {
  _$AppPieChartModelCopyWithImpl(this._value, this._then);

  final AppPieChartModel _value;
  // ignore: unused_field
  final $Res Function(AppPieChartModel) _then;

  @override
  $Res call({
    Object? touchedIndex = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      touchedIndex: touchedIndex == freezed
          ? _value.touchedIndex
          : touchedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
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
abstract class _$AppPieChartModelCopyWith<$Res>
    implements $AppPieChartModelCopyWith<$Res> {
  factory _$AppPieChartModelCopyWith(
          _AppPieChartModel value, $Res Function(_AppPieChartModel) then) =
      __$AppPieChartModelCopyWithImpl<$Res>;
  @override
  $Res call({int touchedIndex, Product product});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$AppPieChartModelCopyWithImpl<$Res>
    extends _$AppPieChartModelCopyWithImpl<$Res>
    implements _$AppPieChartModelCopyWith<$Res> {
  __$AppPieChartModelCopyWithImpl(
      _AppPieChartModel _value, $Res Function(_AppPieChartModel) _then)
      : super(_value, (v) => _then(v as _AppPieChartModel));

  @override
  _AppPieChartModel get _value => super._value as _AppPieChartModel;

  @override
  $Res call({
    Object? touchedIndex = freezed,
    Object? product = freezed,
  }) {
    return _then(_AppPieChartModel(
      touchedIndex: touchedIndex == freezed
          ? _value.touchedIndex
          : touchedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$_AppPieChartModel implements _AppPieChartModel {
  const _$_AppPieChartModel({this.touchedIndex = 0, required this.product});

  @JsonKey(defaultValue: 0)
  @override
  final int touchedIndex;
  @override
  final Product product;

  @override
  String toString() {
    return 'AppPieChartModel(touchedIndex: $touchedIndex, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppPieChartModel &&
            (identical(other.touchedIndex, touchedIndex) ||
                const DeepCollectionEquality()
                    .equals(other.touchedIndex, touchedIndex)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality().equals(other.product, product)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(touchedIndex) ^
      const DeepCollectionEquality().hash(product);

  @JsonKey(ignore: true)
  @override
  _$AppPieChartModelCopyWith<_AppPieChartModel> get copyWith =>
      __$AppPieChartModelCopyWithImpl<_AppPieChartModel>(this, _$identity);
}

abstract class _AppPieChartModel implements AppPieChartModel {
  const factory _AppPieChartModel(
      {int touchedIndex, required Product product}) = _$_AppPieChartModel;

  @override
  int get touchedIndex => throw _privateConstructorUsedError;
  @override
  Product get product => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppPieChartModelCopyWith<_AppPieChartModel> get copyWith =>
      throw _privateConstructorUsedError;
}
