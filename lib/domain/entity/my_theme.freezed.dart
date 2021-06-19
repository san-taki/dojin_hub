// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'my_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyThemeTearOff {
  const _$MyThemeTearOff();

  _DarkTheme dark() {
    return const _DarkTheme();
  }

  _LightTheme light() {
    return const _LightTheme();
  }
}

/// @nodoc
const $MyTheme = _$MyThemeTearOff();

/// @nodoc
mixin _$MyTheme {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dark,
    required TResult Function() light,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dark,
    TResult Function()? light,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DarkTheme value) dark,
    required TResult Function(_LightTheme value) light,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DarkTheme value)? dark,
    TResult Function(_LightTheme value)? light,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyThemeCopyWith<$Res> {
  factory $MyThemeCopyWith(MyTheme value, $Res Function(MyTheme) then) =
      _$MyThemeCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyThemeCopyWithImpl<$Res> implements $MyThemeCopyWith<$Res> {
  _$MyThemeCopyWithImpl(this._value, this._then);

  final MyTheme _value;
  // ignore: unused_field
  final $Res Function(MyTheme) _then;
}

/// @nodoc
abstract class _$DarkThemeCopyWith<$Res> {
  factory _$DarkThemeCopyWith(
          _DarkTheme value, $Res Function(_DarkTheme) then) =
      __$DarkThemeCopyWithImpl<$Res>;
}

/// @nodoc
class __$DarkThemeCopyWithImpl<$Res> extends _$MyThemeCopyWithImpl<$Res>
    implements _$DarkThemeCopyWith<$Res> {
  __$DarkThemeCopyWithImpl(_DarkTheme _value, $Res Function(_DarkTheme) _then)
      : super(_value, (v) => _then(v as _DarkTheme));

  @override
  _DarkTheme get _value => super._value as _DarkTheme;
}

/// @nodoc

class _$_DarkTheme implements _DarkTheme {
  const _$_DarkTheme();

  @override
  String toString() {
    return 'MyTheme.dark()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DarkTheme);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dark,
    required TResult Function() light,
  }) {
    return dark();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dark,
    TResult Function()? light,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DarkTheme value) dark,
    required TResult Function(_LightTheme value) light,
  }) {
    return dark(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DarkTheme value)? dark,
    TResult Function(_LightTheme value)? light,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(this);
    }
    return orElse();
  }
}

abstract class _DarkTheme implements MyTheme {
  const factory _DarkTheme() = _$_DarkTheme;
}

/// @nodoc
abstract class _$LightThemeCopyWith<$Res> {
  factory _$LightThemeCopyWith(
          _LightTheme value, $Res Function(_LightTheme) then) =
      __$LightThemeCopyWithImpl<$Res>;
}

/// @nodoc
class __$LightThemeCopyWithImpl<$Res> extends _$MyThemeCopyWithImpl<$Res>
    implements _$LightThemeCopyWith<$Res> {
  __$LightThemeCopyWithImpl(
      _LightTheme _value, $Res Function(_LightTheme) _then)
      : super(_value, (v) => _then(v as _LightTheme));

  @override
  _LightTheme get _value => super._value as _LightTheme;
}

/// @nodoc

class _$_LightTheme implements _LightTheme {
  const _$_LightTheme();

  @override
  String toString() {
    return 'MyTheme.light()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LightTheme);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dark,
    required TResult Function() light,
  }) {
    return light();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dark,
    TResult Function()? light,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DarkTheme value) dark,
    required TResult Function(_LightTheme value) light,
  }) {
    return light(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DarkTheme value)? dark,
    TResult Function(_LightTheme value)? light,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(this);
    }
    return orElse();
  }
}

abstract class _LightTheme implements MyTheme {
  const factory _LightTheme() = _$_LightTheme;
}
