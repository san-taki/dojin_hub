// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'print_shop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PrintShopTearOff {
  const _$PrintShopTearOff();

  _PrintShop call({required int id, required String name}) {
    return _PrintShop(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
const $PrintShop = _$PrintShopTearOff();

/// @nodoc
mixin _$PrintShop {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrintShopCopyWith<PrintShop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrintShopCopyWith<$Res> {
  factory $PrintShopCopyWith(PrintShop value, $Res Function(PrintShop) then) =
      _$PrintShopCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$PrintShopCopyWithImpl<$Res> implements $PrintShopCopyWith<$Res> {
  _$PrintShopCopyWithImpl(this._value, this._then);

  final PrintShop _value;
  // ignore: unused_field
  final $Res Function(PrintShop) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PrintShopCopyWith<$Res> implements $PrintShopCopyWith<$Res> {
  factory _$PrintShopCopyWith(
          _PrintShop value, $Res Function(_PrintShop) then) =
      __$PrintShopCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$PrintShopCopyWithImpl<$Res> extends _$PrintShopCopyWithImpl<$Res>
    implements _$PrintShopCopyWith<$Res> {
  __$PrintShopCopyWithImpl(_PrintShop _value, $Res Function(_PrintShop) _then)
      : super(_value, (v) => _then(v as _PrintShop));

  @override
  _PrintShop get _value => super._value as _PrintShop;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_PrintShop(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PrintShop implements _PrintShop {
  const _$_PrintShop({required this.id, required this.name});

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'PrintShop(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PrintShop &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$PrintShopCopyWith<_PrintShop> get copyWith =>
      __$PrintShopCopyWithImpl<_PrintShop>(this, _$identity);
}

abstract class _PrintShop implements PrintShop {
  const factory _PrintShop({required int id, required String name}) =
      _$_PrintShop;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PrintShopCopyWith<_PrintShop> get copyWith =>
      throw _privateConstructorUsedError;
}
