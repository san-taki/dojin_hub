// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pie_chart_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PieChartItemTearOff {
  const _$PieChartItemTearOff();

  _PieChartItem call({required String label, required double value}) {
    return _PieChartItem(
      label: label,
      value: value,
    );
  }
}

/// @nodoc
const $PieChartItem = _$PieChartItemTearOff();

/// @nodoc
mixin _$PieChartItem {
  String get label => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PieChartItemCopyWith<PieChartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PieChartItemCopyWith<$Res> {
  factory $PieChartItemCopyWith(
          PieChartItem value, $Res Function(PieChartItem) then) =
      _$PieChartItemCopyWithImpl<$Res>;
  $Res call({String label, double value});
}

/// @nodoc
class _$PieChartItemCopyWithImpl<$Res> implements $PieChartItemCopyWith<$Res> {
  _$PieChartItemCopyWithImpl(this._value, this._then);

  final PieChartItem _value;
  // ignore: unused_field
  final $Res Function(PieChartItem) _then;

  @override
  $Res call({
    Object? label = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$PieChartItemCopyWith<$Res>
    implements $PieChartItemCopyWith<$Res> {
  factory _$PieChartItemCopyWith(
          _PieChartItem value, $Res Function(_PieChartItem) then) =
      __$PieChartItemCopyWithImpl<$Res>;
  @override
  $Res call({String label, double value});
}

/// @nodoc
class __$PieChartItemCopyWithImpl<$Res> extends _$PieChartItemCopyWithImpl<$Res>
    implements _$PieChartItemCopyWith<$Res> {
  __$PieChartItemCopyWithImpl(
      _PieChartItem _value, $Res Function(_PieChartItem) _then)
      : super(_value, (v) => _then(v as _PieChartItem));

  @override
  _PieChartItem get _value => super._value as _PieChartItem;

  @override
  $Res call({
    Object? label = freezed,
    Object? value = freezed,
  }) {
    return _then(_PieChartItem(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_PieChartItem implements _PieChartItem {
  const _$_PieChartItem({required this.label, required this.value});

  @override
  final String label;
  @override
  final double value;

  @override
  String toString() {
    return 'PieChartItem(label: $label, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PieChartItem &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$PieChartItemCopyWith<_PieChartItem> get copyWith =>
      __$PieChartItemCopyWithImpl<_PieChartItem>(this, _$identity);
}

abstract class _PieChartItem implements PieChartItem {
  const factory _PieChartItem({required String label, required double value}) =
      _$_PieChartItem;

  @override
  String get label => throw _privateConstructorUsedError;
  @override
  double get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PieChartItemCopyWith<_PieChartItem> get copyWith =>
      throw _privateConstructorUsedError;
}
