// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookTearOff {
  const _$BookTearOff();

  _Book call({required BookStatus bookStatus}) {
    return _Book(
      bookStatus: bookStatus,
    );
  }
}

/// @nodoc
const $Book = _$BookTearOff();

/// @nodoc
mixin _$Book {
  BookStatus get bookStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res>;
  $Res call({BookStatus bookStatus});

  $BookStatusCopyWith<$Res> get bookStatus;
}

/// @nodoc
class _$BookCopyWithImpl<$Res> implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  final Book _value;
  // ignore: unused_field
  final $Res Function(Book) _then;

  @override
  $Res call({
    Object? bookStatus = freezed,
  }) {
    return _then(_value.copyWith(
      bookStatus: bookStatus == freezed
          ? _value.bookStatus
          : bookStatus // ignore: cast_nullable_to_non_nullable
              as BookStatus,
    ));
  }

  @override
  $BookStatusCopyWith<$Res> get bookStatus {
    return $BookStatusCopyWith<$Res>(_value.bookStatus, (value) {
      return _then(_value.copyWith(bookStatus: value));
    });
  }
}

/// @nodoc
abstract class _$BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$BookCopyWith(_Book value, $Res Function(_Book) then) =
      __$BookCopyWithImpl<$Res>;
  @override
  $Res call({BookStatus bookStatus});

  @override
  $BookStatusCopyWith<$Res> get bookStatus;
}

/// @nodoc
class __$BookCopyWithImpl<$Res> extends _$BookCopyWithImpl<$Res>
    implements _$BookCopyWith<$Res> {
  __$BookCopyWithImpl(_Book _value, $Res Function(_Book) _then)
      : super(_value, (v) => _then(v as _Book));

  @override
  _Book get _value => super._value as _Book;

  @override
  $Res call({
    Object? bookStatus = freezed,
  }) {
    return _then(_Book(
      bookStatus: bookStatus == freezed
          ? _value.bookStatus
          : bookStatus // ignore: cast_nullable_to_non_nullable
              as BookStatus,
    ));
  }
}

/// @nodoc

class _$_Book implements _Book {
  const _$_Book({required this.bookStatus});

  @override
  final BookStatus bookStatus;

  @override
  String toString() {
    return 'Book(bookStatus: $bookStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Book &&
            (identical(other.bookStatus, bookStatus) ||
                const DeepCollectionEquality()
                    .equals(other.bookStatus, bookStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bookStatus);

  @JsonKey(ignore: true)
  @override
  _$BookCopyWith<_Book> get copyWith =>
      __$BookCopyWithImpl<_Book>(this, _$identity);
}

abstract class _Book implements Book {
  const factory _Book({required BookStatus bookStatus}) = _$_Book;

  @override
  BookStatus get bookStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookCopyWith<_Book> get copyWith => throw _privateConstructorUsedError;
}
