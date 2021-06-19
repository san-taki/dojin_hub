// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

  _Product call(
      {required String id,
      required String title,
      String coverImagePath = '',
      String backCoverImagePath = '',
      List<Edition> editions = const [],
      List<DojinEvent> atendedEvents = const []}) {
    return _Product(
      id: id,
      title: title,
      coverImagePath: coverImagePath,
      backCoverImagePath: backCoverImagePath,
      editions: editions,
      atendedEvents: atendedEvents,
    );
  }
}

/// @nodoc
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get coverImagePath => throw _privateConstructorUsedError;
  String get backCoverImagePath => throw _privateConstructorUsedError;
  List<Edition> get editions => throw _privateConstructorUsedError;
  List<DojinEvent> get atendedEvents => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String coverImagePath,
      String backCoverImagePath,
      List<Edition> editions,
      List<DojinEvent> atendedEvents});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? coverImagePath = freezed,
    Object? backCoverImagePath = freezed,
    Object? editions = freezed,
    Object? atendedEvents = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      coverImagePath: coverImagePath == freezed
          ? _value.coverImagePath
          : coverImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      backCoverImagePath: backCoverImagePath == freezed
          ? _value.backCoverImagePath
          : backCoverImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      editions: editions == freezed
          ? _value.editions
          : editions // ignore: cast_nullable_to_non_nullable
              as List<Edition>,
      atendedEvents: atendedEvents == freezed
          ? _value.atendedEvents
          : atendedEvents // ignore: cast_nullable_to_non_nullable
              as List<DojinEvent>,
    ));
  }
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String coverImagePath,
      String backCoverImagePath,
      List<Edition> editions,
      List<DojinEvent> atendedEvents});
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? coverImagePath = freezed,
    Object? backCoverImagePath = freezed,
    Object? editions = freezed,
    Object? atendedEvents = freezed,
  }) {
    return _then(_Product(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      coverImagePath: coverImagePath == freezed
          ? _value.coverImagePath
          : coverImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      backCoverImagePath: backCoverImagePath == freezed
          ? _value.backCoverImagePath
          : backCoverImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      editions: editions == freezed
          ? _value.editions
          : editions // ignore: cast_nullable_to_non_nullable
              as List<Edition>,
      atendedEvents: atendedEvents == freezed
          ? _value.atendedEvents
          : atendedEvents // ignore: cast_nullable_to_non_nullable
              as List<DojinEvent>,
    ));
  }
}

/// @nodoc

class _$_Product extends _Product {
  const _$_Product(
      {required this.id,
      required this.title,
      this.coverImagePath = '',
      this.backCoverImagePath = '',
      this.editions = const [],
      this.atendedEvents = const []})
      : super._();

  @override
  final String id;
  @override
  final String title;
  @JsonKey(defaultValue: '')
  @override
  final String coverImagePath;
  @JsonKey(defaultValue: '')
  @override
  final String backCoverImagePath;
  @JsonKey(defaultValue: const [])
  @override
  final List<Edition> editions;
  @JsonKey(defaultValue: const [])
  @override
  final List<DojinEvent> atendedEvents;

  @override
  String toString() {
    return 'Product(id: $id, title: $title, coverImagePath: $coverImagePath, backCoverImagePath: $backCoverImagePath, editions: $editions, atendedEvents: $atendedEvents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Product &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.coverImagePath, coverImagePath) ||
                const DeepCollectionEquality()
                    .equals(other.coverImagePath, coverImagePath)) &&
            (identical(other.backCoverImagePath, backCoverImagePath) ||
                const DeepCollectionEquality()
                    .equals(other.backCoverImagePath, backCoverImagePath)) &&
            (identical(other.editions, editions) ||
                const DeepCollectionEquality()
                    .equals(other.editions, editions)) &&
            (identical(other.atendedEvents, atendedEvents) ||
                const DeepCollectionEquality()
                    .equals(other.atendedEvents, atendedEvents)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(coverImagePath) ^
      const DeepCollectionEquality().hash(backCoverImagePath) ^
      const DeepCollectionEquality().hash(editions) ^
      const DeepCollectionEquality().hash(atendedEvents);

  @JsonKey(ignore: true)
  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);
}

abstract class _Product extends Product {
  const factory _Product(
      {required String id,
      required String title,
      String coverImagePath,
      String backCoverImagePath,
      List<Edition> editions,
      List<DojinEvent> atendedEvents}) = _$_Product;
  const _Product._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get coverImagePath => throw _privateConstructorUsedError;
  @override
  String get backCoverImagePath => throw _privateConstructorUsedError;
  @override
  List<Edition> get editions => throw _privateConstructorUsedError;
  @override
  List<DojinEvent> get atendedEvents => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
