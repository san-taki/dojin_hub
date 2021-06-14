// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'book_storage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookStorageTearOff {
  const _$BookStorageTearOff();

  _BookStorage call({List<Book> books = const []}) {
    return _BookStorage(
      books: books,
    );
  }
}

/// @nodoc
const $BookStorage = _$BookStorageTearOff();

/// @nodoc
mixin _$BookStorage {
  List<Book> get books => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookStorageCopyWith<BookStorage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookStorageCopyWith<$Res> {
  factory $BookStorageCopyWith(
          BookStorage value, $Res Function(BookStorage) then) =
      _$BookStorageCopyWithImpl<$Res>;
  $Res call({List<Book> books});
}

/// @nodoc
class _$BookStorageCopyWithImpl<$Res> implements $BookStorageCopyWith<$Res> {
  _$BookStorageCopyWithImpl(this._value, this._then);

  final BookStorage _value;
  // ignore: unused_field
  final $Res Function(BookStorage) _then;

  @override
  $Res call({
    Object? books = freezed,
  }) {
    return _then(_value.copyWith(
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc
abstract class _$BookStorageCopyWith<$Res>
    implements $BookStorageCopyWith<$Res> {
  factory _$BookStorageCopyWith(
          _BookStorage value, $Res Function(_BookStorage) then) =
      __$BookStorageCopyWithImpl<$Res>;
  @override
  $Res call({List<Book> books});
}

/// @nodoc
class __$BookStorageCopyWithImpl<$Res> extends _$BookStorageCopyWithImpl<$Res>
    implements _$BookStorageCopyWith<$Res> {
  __$BookStorageCopyWithImpl(
      _BookStorage _value, $Res Function(_BookStorage) _then)
      : super(_value, (v) => _then(v as _BookStorage));

  @override
  _BookStorage get _value => super._value as _BookStorage;

  @override
  $Res call({
    Object? books = freezed,
  }) {
    return _then(_BookStorage(
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc

class _$_BookStorage implements _BookStorage {
  const _$_BookStorage({this.books = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<Book> books;

  @override
  String toString() {
    return 'BookStorage(books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookStorage &&
            (identical(other.books, books) ||
                const DeepCollectionEquality().equals(other.books, books)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(books);

  @JsonKey(ignore: true)
  @override
  _$BookStorageCopyWith<_BookStorage> get copyWith =>
      __$BookStorageCopyWithImpl<_BookStorage>(this, _$identity);
}

abstract class _BookStorage implements BookStorage {
  const factory _BookStorage({List<Book> books}) = _$_BookStorage;

  @override
  List<Book> get books => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookStorageCopyWith<_BookStorage> get copyWith =>
      throw _privateConstructorUsedError;
}
