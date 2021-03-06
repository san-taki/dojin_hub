// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_screen_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeScreenModelTearOff {
  const _$HomeScreenModelTearOff();

  _HomeScreenModel call({String version = ''}) {
    return _HomeScreenModel(
      version: version,
    );
  }
}

/// @nodoc
const $HomeScreenModel = _$HomeScreenModelTearOff();

/// @nodoc
mixin _$HomeScreenModel {
  String get version => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenModelCopyWith<HomeScreenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenModelCopyWith<$Res> {
  factory $HomeScreenModelCopyWith(
          HomeScreenModel value, $Res Function(HomeScreenModel) then) =
      _$HomeScreenModelCopyWithImpl<$Res>;
  $Res call({String version});
}

/// @nodoc
class _$HomeScreenModelCopyWithImpl<$Res>
    implements $HomeScreenModelCopyWith<$Res> {
  _$HomeScreenModelCopyWithImpl(this._value, this._then);

  final HomeScreenModel _value;
  // ignore: unused_field
  final $Res Function(HomeScreenModel) _then;

  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$HomeScreenModelCopyWith<$Res>
    implements $HomeScreenModelCopyWith<$Res> {
  factory _$HomeScreenModelCopyWith(
          _HomeScreenModel value, $Res Function(_HomeScreenModel) then) =
      __$HomeScreenModelCopyWithImpl<$Res>;
  @override
  $Res call({String version});
}

/// @nodoc
class __$HomeScreenModelCopyWithImpl<$Res>
    extends _$HomeScreenModelCopyWithImpl<$Res>
    implements _$HomeScreenModelCopyWith<$Res> {
  __$HomeScreenModelCopyWithImpl(
      _HomeScreenModel _value, $Res Function(_HomeScreenModel) _then)
      : super(_value, (v) => _then(v as _HomeScreenModel));

  @override
  _HomeScreenModel get _value => super._value as _HomeScreenModel;

  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_HomeScreenModel(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HomeScreenModel implements _HomeScreenModel {
  const _$_HomeScreenModel({this.version = ''});

  @JsonKey(defaultValue: '')
  @override
  final String version;

  @override
  String toString() {
    return 'HomeScreenModel(version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeScreenModel &&
            (identical(other.version, version) ||
                const DeepCollectionEquality().equals(other.version, version)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(version);

  @JsonKey(ignore: true)
  @override
  _$HomeScreenModelCopyWith<_HomeScreenModel> get copyWith =>
      __$HomeScreenModelCopyWithImpl<_HomeScreenModel>(this, _$identity);
}

abstract class _HomeScreenModel implements HomeScreenModel {
  const factory _HomeScreenModel({String version}) = _$_HomeScreenModel;

  @override
  String get version => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeScreenModelCopyWith<_HomeScreenModel> get copyWith =>
      throw _privateConstructorUsedError;
}
