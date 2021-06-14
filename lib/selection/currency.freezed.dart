// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'currency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CurrencyTearOff {
  const _$CurrencyTearOff();

  _JPY jpy() {
    return const _JPY();
  }

  _Extra extra({required String label}) {
    return _Extra(
      label: label,
    );
  }
}

/// @nodoc
const $Currency = _$CurrencyTearOff();

/// @nodoc
mixin _$Currency {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() jpy,
    required TResult Function(String label) extra,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? jpy,
    TResult Function(String label)? extra,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JPY value) jpy,
    required TResult Function(_Extra value) extra,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JPY value)? jpy,
    TResult Function(_Extra value)? extra,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyCopyWith<$Res> {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) then) =
      _$CurrencyCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrencyCopyWithImpl<$Res> implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._value, this._then);

  final Currency _value;
  // ignore: unused_field
  final $Res Function(Currency) _then;
}

/// @nodoc
abstract class _$JPYCopyWith<$Res> {
  factory _$JPYCopyWith(_JPY value, $Res Function(_JPY) then) =
      __$JPYCopyWithImpl<$Res>;
}

/// @nodoc
class __$JPYCopyWithImpl<$Res> extends _$CurrencyCopyWithImpl<$Res>
    implements _$JPYCopyWith<$Res> {
  __$JPYCopyWithImpl(_JPY _value, $Res Function(_JPY) _then)
      : super(_value, (v) => _then(v as _JPY));

  @override
  _JPY get _value => super._value as _JPY;
}

/// @nodoc

class _$_JPY implements _JPY {
  const _$_JPY();

  @override
  String toString() {
    return 'Currency.jpy()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _JPY);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() jpy,
    required TResult Function(String label) extra,
  }) {
    return jpy();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? jpy,
    TResult Function(String label)? extra,
    required TResult orElse(),
  }) {
    if (jpy != null) {
      return jpy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JPY value) jpy,
    required TResult Function(_Extra value) extra,
  }) {
    return jpy(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JPY value)? jpy,
    TResult Function(_Extra value)? extra,
    required TResult orElse(),
  }) {
    if (jpy != null) {
      return jpy(this);
    }
    return orElse();
  }
}

abstract class _JPY implements Currency {
  const factory _JPY() = _$_JPY;
}

/// @nodoc
abstract class _$ExtraCopyWith<$Res> {
  factory _$ExtraCopyWith(_Extra value, $Res Function(_Extra) then) =
      __$ExtraCopyWithImpl<$Res>;
  $Res call({String label});
}

/// @nodoc
class __$ExtraCopyWithImpl<$Res> extends _$CurrencyCopyWithImpl<$Res>
    implements _$ExtraCopyWith<$Res> {
  __$ExtraCopyWithImpl(_Extra _value, $Res Function(_Extra) _then)
      : super(_value, (v) => _then(v as _Extra));

  @override
  _Extra get _value => super._value as _Extra;

  @override
  $Res call({
    Object? label = freezed,
  }) {
    return _then(_Extra(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Extra implements _Extra {
  const _$_Extra({required this.label});

  @override
  final String label;

  @override
  String toString() {
    return 'Currency.extra(label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Extra &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(label);

  @JsonKey(ignore: true)
  @override
  _$ExtraCopyWith<_Extra> get copyWith =>
      __$ExtraCopyWithImpl<_Extra>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() jpy,
    required TResult Function(String label) extra,
  }) {
    return extra(label);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? jpy,
    TResult Function(String label)? extra,
    required TResult orElse(),
  }) {
    if (extra != null) {
      return extra(label);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JPY value) jpy,
    required TResult Function(_Extra value) extra,
  }) {
    return extra(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JPY value)? jpy,
    TResult Function(_Extra value)? extra,
    required TResult orElse(),
  }) {
    if (extra != null) {
      return extra(this);
    }
    return orElse();
  }
}

abstract class _Extra implements Currency {
  const factory _Extra({required String label}) = _$_Extra;

  String get label => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ExtraCopyWith<_Extra> get copyWith => throw _privateConstructorUsedError;
}
