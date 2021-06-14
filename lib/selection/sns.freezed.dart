// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sns.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SnsTearOff {
  const _$SnsTearOff();

  _Twitter twitter({required String id}) {
    return _Twitter(
      id: id,
    );
  }

  _Line line({required String id}) {
    return _Line(
      id: id,
    );
  }

  _Extra extra({required String label, required String id}) {
    return _Extra(
      label: label,
      id: id,
    );
  }
}

/// @nodoc
const $Sns = _$SnsTearOff();

/// @nodoc
mixin _$Sns {
  String get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) twitter,
    required TResult Function(String id) line,
    required TResult Function(String label, String id) extra,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? twitter,
    TResult Function(String id)? line,
    TResult Function(String label, String id)? extra,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Twitter value) twitter,
    required TResult Function(_Line value) line,
    required TResult Function(_Extra value) extra,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Twitter value)? twitter,
    TResult Function(_Line value)? line,
    TResult Function(_Extra value)? extra,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SnsCopyWith<Sns> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnsCopyWith<$Res> {
  factory $SnsCopyWith(Sns value, $Res Function(Sns) then) =
      _$SnsCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$SnsCopyWithImpl<$Res> implements $SnsCopyWith<$Res> {
  _$SnsCopyWithImpl(this._value, this._then);

  final Sns _value;
  // ignore: unused_field
  final $Res Function(Sns) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TwitterCopyWith<$Res> implements $SnsCopyWith<$Res> {
  factory _$TwitterCopyWith(_Twitter value, $Res Function(_Twitter) then) =
      __$TwitterCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$TwitterCopyWithImpl<$Res> extends _$SnsCopyWithImpl<$Res>
    implements _$TwitterCopyWith<$Res> {
  __$TwitterCopyWithImpl(_Twitter _value, $Res Function(_Twitter) _then)
      : super(_value, (v) => _then(v as _Twitter));

  @override
  _Twitter get _value => super._value as _Twitter;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Twitter(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Twitter implements _Twitter {
  const _$_Twitter({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'Sns.twitter(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Twitter &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$TwitterCopyWith<_Twitter> get copyWith =>
      __$TwitterCopyWithImpl<_Twitter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) twitter,
    required TResult Function(String id) line,
    required TResult Function(String label, String id) extra,
  }) {
    return twitter(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? twitter,
    TResult Function(String id)? line,
    TResult Function(String label, String id)? extra,
    required TResult orElse(),
  }) {
    if (twitter != null) {
      return twitter(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Twitter value) twitter,
    required TResult Function(_Line value) line,
    required TResult Function(_Extra value) extra,
  }) {
    return twitter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Twitter value)? twitter,
    TResult Function(_Line value)? line,
    TResult Function(_Extra value)? extra,
    required TResult orElse(),
  }) {
    if (twitter != null) {
      return twitter(this);
    }
    return orElse();
  }
}

abstract class _Twitter implements Sns {
  const factory _Twitter({required String id}) = _$_Twitter;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TwitterCopyWith<_Twitter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LineCopyWith<$Res> implements $SnsCopyWith<$Res> {
  factory _$LineCopyWith(_Line value, $Res Function(_Line) then) =
      __$LineCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$LineCopyWithImpl<$Res> extends _$SnsCopyWithImpl<$Res>
    implements _$LineCopyWith<$Res> {
  __$LineCopyWithImpl(_Line _value, $Res Function(_Line) _then)
      : super(_value, (v) => _then(v as _Line));

  @override
  _Line get _value => super._value as _Line;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Line(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Line implements _Line {
  const _$_Line({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'Sns.line(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Line &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$LineCopyWith<_Line> get copyWith =>
      __$LineCopyWithImpl<_Line>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) twitter,
    required TResult Function(String id) line,
    required TResult Function(String label, String id) extra,
  }) {
    return line(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? twitter,
    TResult Function(String id)? line,
    TResult Function(String label, String id)? extra,
    required TResult orElse(),
  }) {
    if (line != null) {
      return line(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Twitter value) twitter,
    required TResult Function(_Line value) line,
    required TResult Function(_Extra value) extra,
  }) {
    return line(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Twitter value)? twitter,
    TResult Function(_Line value)? line,
    TResult Function(_Extra value)? extra,
    required TResult orElse(),
  }) {
    if (line != null) {
      return line(this);
    }
    return orElse();
  }
}

abstract class _Line implements Sns {
  const factory _Line({required String id}) = _$_Line;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LineCopyWith<_Line> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ExtraCopyWith<$Res> implements $SnsCopyWith<$Res> {
  factory _$ExtraCopyWith(_Extra value, $Res Function(_Extra) then) =
      __$ExtraCopyWithImpl<$Res>;
  @override
  $Res call({String label, String id});
}

/// @nodoc
class __$ExtraCopyWithImpl<$Res> extends _$SnsCopyWithImpl<$Res>
    implements _$ExtraCopyWith<$Res> {
  __$ExtraCopyWithImpl(_Extra _value, $Res Function(_Extra) _then)
      : super(_value, (v) => _then(v as _Extra));

  @override
  _Extra get _value => super._value as _Extra;

  @override
  $Res call({
    Object? label = freezed,
    Object? id = freezed,
  }) {
    return _then(_Extra(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Extra implements _Extra {
  const _$_Extra({required this.label, required this.id});

  @override
  final String label;
  @override
  final String id;

  @override
  String toString() {
    return 'Sns.extra(label: $label, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Extra &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ExtraCopyWith<_Extra> get copyWith =>
      __$ExtraCopyWithImpl<_Extra>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) twitter,
    required TResult Function(String id) line,
    required TResult Function(String label, String id) extra,
  }) {
    return extra(label, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? twitter,
    TResult Function(String id)? line,
    TResult Function(String label, String id)? extra,
    required TResult orElse(),
  }) {
    if (extra != null) {
      return extra(label, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Twitter value) twitter,
    required TResult Function(_Line value) line,
    required TResult Function(_Extra value) extra,
  }) {
    return extra(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Twitter value)? twitter,
    TResult Function(_Line value)? line,
    TResult Function(_Extra value)? extra,
    required TResult orElse(),
  }) {
    if (extra != null) {
      return extra(this);
    }
    return orElse();
  }
}

abstract class _Extra implements Sns {
  const factory _Extra({required String label, required String id}) = _$_Extra;

  String get label => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExtraCopyWith<_Extra> get copyWith => throw _privateConstructorUsedError;
}
