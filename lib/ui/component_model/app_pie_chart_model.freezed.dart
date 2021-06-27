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

  _AppPieChartModel call({required List<PieChartItem> items}) {
    return _AppPieChartModel(
      items: items,
    );
  }
}

/// @nodoc
const $AppPieChartModel = _$AppPieChartModelTearOff();

/// @nodoc
mixin _$AppPieChartModel {
  List<PieChartItem> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppPieChartModelCopyWith<AppPieChartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPieChartModelCopyWith<$Res> {
  factory $AppPieChartModelCopyWith(
          AppPieChartModel value, $Res Function(AppPieChartModel) then) =
      _$AppPieChartModelCopyWithImpl<$Res>;
  $Res call({List<PieChartItem> items});
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
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PieChartItem>,
    ));
  }
}

/// @nodoc
abstract class _$AppPieChartModelCopyWith<$Res>
    implements $AppPieChartModelCopyWith<$Res> {
  factory _$AppPieChartModelCopyWith(
          _AppPieChartModel value, $Res Function(_AppPieChartModel) then) =
      __$AppPieChartModelCopyWithImpl<$Res>;
  @override
  $Res call({List<PieChartItem> items});
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
    Object? items = freezed,
  }) {
    return _then(_AppPieChartModel(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PieChartItem>,
    ));
  }
}

/// @nodoc

class _$_AppPieChartModel implements _AppPieChartModel {
  const _$_AppPieChartModel({required this.items});

  @override
  final List<PieChartItem> items;

  @override
  String toString() {
    return 'AppPieChartModel(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppPieChartModel &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$AppPieChartModelCopyWith<_AppPieChartModel> get copyWith =>
      __$AppPieChartModelCopyWithImpl<_AppPieChartModel>(this, _$identity);
}

abstract class _AppPieChartModel implements AppPieChartModel {
  const factory _AppPieChartModel({required List<PieChartItem> items}) =
      _$_AppPieChartModel;

  @override
  List<PieChartItem> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppPieChartModelCopyWith<_AppPieChartModel> get copyWith =>
      throw _privateConstructorUsedError;
}
