// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'person.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ParsonTearOff {
  const _$ParsonTearOff();

  _Parson call({required String name, required Sns? sns}) {
    return _Parson(
      name: name,
      sns: sns,
    );
  }
}

/// @nodoc
const $Parson = _$ParsonTearOff();

/// @nodoc
mixin _$Parson {
  String get name => throw _privateConstructorUsedError;
  Sns? get sns => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsonCopyWith<Parson> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsonCopyWith<$Res> {
  factory $ParsonCopyWith(Parson value, $Res Function(Parson) then) =
      _$ParsonCopyWithImpl<$Res>;
  $Res call({String name, Sns? sns});

  $SnsCopyWith<$Res>? get sns;
}

/// @nodoc
class _$ParsonCopyWithImpl<$Res> implements $ParsonCopyWith<$Res> {
  _$ParsonCopyWithImpl(this._value, this._then);

  final Parson _value;
  // ignore: unused_field
  final $Res Function(Parson) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? sns = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sns: sns == freezed
          ? _value.sns
          : sns // ignore: cast_nullable_to_non_nullable
              as Sns?,
    ));
  }

  @override
  $SnsCopyWith<$Res>? get sns {
    if (_value.sns == null) {
      return null;
    }

    return $SnsCopyWith<$Res>(_value.sns!, (value) {
      return _then(_value.copyWith(sns: value));
    });
  }
}

/// @nodoc
abstract class _$ParsonCopyWith<$Res> implements $ParsonCopyWith<$Res> {
  factory _$ParsonCopyWith(_Parson value, $Res Function(_Parson) then) =
      __$ParsonCopyWithImpl<$Res>;
  @override
  $Res call({String name, Sns? sns});

  @override
  $SnsCopyWith<$Res>? get sns;
}

/// @nodoc
class __$ParsonCopyWithImpl<$Res> extends _$ParsonCopyWithImpl<$Res>
    implements _$ParsonCopyWith<$Res> {
  __$ParsonCopyWithImpl(_Parson _value, $Res Function(_Parson) _then)
      : super(_value, (v) => _then(v as _Parson));

  @override
  _Parson get _value => super._value as _Parson;

  @override
  $Res call({
    Object? name = freezed,
    Object? sns = freezed,
  }) {
    return _then(_Parson(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sns: sns == freezed
          ? _value.sns
          : sns // ignore: cast_nullable_to_non_nullable
              as Sns?,
    ));
  }
}

/// @nodoc

class _$_Parson implements _Parson {
  const _$_Parson({required this.name, required this.sns});

  @override
  final String name;
  @override
  final Sns? sns;

  @override
  String toString() {
    return 'Parson(name: $name, sns: $sns)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Parson &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.sns, sns) ||
                const DeepCollectionEquality().equals(other.sns, sns)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(sns);

  @JsonKey(ignore: true)
  @override
  _$ParsonCopyWith<_Parson> get copyWith =>
      __$ParsonCopyWithImpl<_Parson>(this, _$identity);
}

abstract class _Parson implements Parson {
  const factory _Parson({required String name, required Sns? sns}) = _$_Parson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  Sns? get sns => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ParsonCopyWith<_Parson> get copyWith => throw _privateConstructorUsedError;
}
