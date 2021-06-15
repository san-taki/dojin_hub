// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'input_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InputTypeTearOff {
  const _$InputTypeTearOff();

  _Text text() {
    return const _Text();
  }

  _Number number() {
    return const _Number();
  }
}

/// @nodoc
const $InputType = _$InputTypeTearOff();

/// @nodoc
mixin _$InputType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() text,
    required TResult Function() number,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? text,
    TResult Function()? number,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Text value) text,
    required TResult Function(_Number value) number,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Text value)? text,
    TResult Function(_Number value)? number,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputTypeCopyWith<$Res> {
  factory $InputTypeCopyWith(InputType value, $Res Function(InputType) then) =
      _$InputTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$InputTypeCopyWithImpl<$Res> implements $InputTypeCopyWith<$Res> {
  _$InputTypeCopyWithImpl(this._value, this._then);

  final InputType _value;
  // ignore: unused_field
  final $Res Function(InputType) _then;
}

/// @nodoc
abstract class _$TextCopyWith<$Res> {
  factory _$TextCopyWith(_Text value, $Res Function(_Text) then) =
      __$TextCopyWithImpl<$Res>;
}

/// @nodoc
class __$TextCopyWithImpl<$Res> extends _$InputTypeCopyWithImpl<$Res>
    implements _$TextCopyWith<$Res> {
  __$TextCopyWithImpl(_Text _value, $Res Function(_Text) _then)
      : super(_value, (v) => _then(v as _Text));

  @override
  _Text get _value => super._value as _Text;
}

/// @nodoc

class _$_Text implements _Text {
  const _$_Text();

  @override
  String toString() {
    return 'InputType.text()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Text);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() text,
    required TResult Function() number,
  }) {
    return text();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? text,
    TResult Function()? number,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Text value) text,
    required TResult Function(_Number value) number,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Text value)? text,
    TResult Function(_Number value)? number,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class _Text implements InputType {
  const factory _Text() = _$_Text;
}

/// @nodoc
abstract class _$NumberCopyWith<$Res> {
  factory _$NumberCopyWith(_Number value, $Res Function(_Number) then) =
      __$NumberCopyWithImpl<$Res>;
}

/// @nodoc
class __$NumberCopyWithImpl<$Res> extends _$InputTypeCopyWithImpl<$Res>
    implements _$NumberCopyWith<$Res> {
  __$NumberCopyWithImpl(_Number _value, $Res Function(_Number) _then)
      : super(_value, (v) => _then(v as _Number));

  @override
  _Number get _value => super._value as _Number;
}

/// @nodoc

class _$_Number implements _Number {
  const _$_Number();

  @override
  String toString() {
    return 'InputType.number()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Number);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() text,
    required TResult Function() number,
  }) {
    return number();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? text,
    TResult Function()? number,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Text value) text,
    required TResult Function(_Number value) number,
  }) {
    return number(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Text value)? text,
    TResult Function(_Number value)? number,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(this);
    }
    return orElse();
  }
}

abstract class _Number implements InputType {
  const factory _Number() = _$_Number;
}
