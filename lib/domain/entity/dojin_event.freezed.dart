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

  _DojinEvent call(
      {required String title,
      DateTime? startDateTime,
      DateTime? endDateTime,
      DojinEventResult? result}) {
    return _DojinEvent(
      title: title,
      startDateTime: startDateTime,
      endDateTime: endDateTime,
      result: result,
    );
  }
}

/// @nodoc
const $DojinEvent = _$DojinEventTearOff();

/// @nodoc
mixin _$DojinEvent {
  String get title => throw _privateConstructorUsedError;
  DateTime? get startDateTime => throw _privateConstructorUsedError;
  DateTime? get endDateTime => throw _privateConstructorUsedError;
  DojinEventResult? get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DojinEventCopyWith<DojinEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DojinEventCopyWith<$Res> {
  factory $DojinEventCopyWith(
          DojinEvent value, $Res Function(DojinEvent) then) =
      _$DojinEventCopyWithImpl<$Res>;
  $Res call(
      {String title,
      DateTime? startDateTime,
      DateTime? endDateTime,
      DojinEventResult? result});

  $DojinEventResultCopyWith<$Res>? get result;
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
    Object? startDateTime = freezed,
    Object? endDateTime = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startDateTime: startDateTime == freezed
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDateTime: endDateTime == freezed
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as DojinEventResult?,
    ));
  }

  @override
  $DojinEventResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $DojinEventResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$DojinEventCopyWith<$Res> implements $DojinEventCopyWith<$Res> {
  factory _$DojinEventCopyWith(
          _DojinEvent value, $Res Function(_DojinEvent) then) =
      __$DojinEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      DateTime? startDateTime,
      DateTime? endDateTime,
      DojinEventResult? result});

  @override
  $DojinEventResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$DojinEventCopyWithImpl<$Res> extends _$DojinEventCopyWithImpl<$Res>
    implements _$DojinEventCopyWith<$Res> {
  __$DojinEventCopyWithImpl(
      _DojinEvent _value, $Res Function(_DojinEvent) _then)
      : super(_value, (v) => _then(v as _DojinEvent));

  @override
  _DojinEvent get _value => super._value as _DojinEvent;

  @override
  $Res call({
    Object? title = freezed,
    Object? startDateTime = freezed,
    Object? endDateTime = freezed,
    Object? result = freezed,
  }) {
    return _then(_DojinEvent(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startDateTime: startDateTime == freezed
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDateTime: endDateTime == freezed
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as DojinEventResult?,
    ));
  }
}

/// @nodoc

class _$_DojinEvent implements _DojinEvent {
  const _$_DojinEvent(
      {required this.title, this.startDateTime, this.endDateTime, this.result});

  @override
  final String title;
  @override
  final DateTime? startDateTime;
  @override
  final DateTime? endDateTime;
  @override
  final DojinEventResult? result;

  @override
  String toString() {
    return 'DojinEvent(title: $title, startDateTime: $startDateTime, endDateTime: $endDateTime, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DojinEvent &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.startDateTime, startDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.startDateTime, startDateTime)) &&
            (identical(other.endDateTime, endDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.endDateTime, endDateTime)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(startDateTime) ^
      const DeepCollectionEquality().hash(endDateTime) ^
      const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  _$DojinEventCopyWith<_DojinEvent> get copyWith =>
      __$DojinEventCopyWithImpl<_DojinEvent>(this, _$identity);
}

abstract class _DojinEvent implements DojinEvent {
  const factory _DojinEvent(
      {required String title,
      DateTime? startDateTime,
      DateTime? endDateTime,
      DojinEventResult? result}) = _$_DojinEvent;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  DateTime? get startDateTime => throw _privateConstructorUsedError;
  @override
  DateTime? get endDateTime => throw _privateConstructorUsedError;
  @override
  DojinEventResult? get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DojinEventCopyWith<_DojinEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
