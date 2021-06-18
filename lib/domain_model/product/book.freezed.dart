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

  _Book call(
      {required BookStatus bookStatus,
      required Currency currency,
      required int sellingPrice}) {
    return _Book(
      bookStatus: bookStatus,
      currency: currency,
      sellingPrice: sellingPrice,
    );
  }
}

/// @nodoc
const $Book = _$BookTearOff();

/// @nodoc
mixin _$Book {
  BookStatus get bookStatus => throw _privateConstructorUsedError;
  Currency get currency => throw _privateConstructorUsedError;
  int get sellingPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res>;
  $Res call({BookStatus bookStatus, Currency currency, int sellingPrice});

  $BookStatusCopyWith<$Res> get bookStatus;
  $CurrencyCopyWith<$Res> get currency;
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
    Object? currency = freezed,
    Object? sellingPrice = freezed,
  }) {
    return _then(_value.copyWith(
      bookStatus: bookStatus == freezed
          ? _value.bookStatus
          : bookStatus // ignore: cast_nullable_to_non_nullable
              as BookStatus,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      sellingPrice: sellingPrice == freezed
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $BookStatusCopyWith<$Res> get bookStatus {
    return $BookStatusCopyWith<$Res>(_value.bookStatus, (value) {
      return _then(_value.copyWith(bookStatus: value));
    });
  }

  @override
  $CurrencyCopyWith<$Res> get currency {
    return $CurrencyCopyWith<$Res>(_value.currency, (value) {
      return _then(_value.copyWith(currency: value));
    });
  }
}

/// @nodoc
abstract class _$BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$BookCopyWith(_Book value, $Res Function(_Book) then) =
      __$BookCopyWithImpl<$Res>;
  @override
  $Res call({BookStatus bookStatus, Currency currency, int sellingPrice});

  @override
  $BookStatusCopyWith<$Res> get bookStatus;
  @override
  $CurrencyCopyWith<$Res> get currency;
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
    Object? currency = freezed,
    Object? sellingPrice = freezed,
  }) {
    return _then(_Book(
      bookStatus: bookStatus == freezed
          ? _value.bookStatus
          : bookStatus // ignore: cast_nullable_to_non_nullable
              as BookStatus,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      sellingPrice: sellingPrice == freezed
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Book implements _Book {
  const _$_Book(
      {required this.bookStatus,
      required this.currency,
      required this.sellingPrice});

  @override
  final BookStatus bookStatus;
  @override
  final Currency currency;
  @override
  final int sellingPrice;

  @override
  String toString() {
    return 'Book(bookStatus: $bookStatus, currency: $currency, sellingPrice: $sellingPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Book &&
            (identical(other.bookStatus, bookStatus) ||
                const DeepCollectionEquality()
                    .equals(other.bookStatus, bookStatus)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.sellingPrice, sellingPrice) ||
                const DeepCollectionEquality()
                    .equals(other.sellingPrice, sellingPrice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bookStatus) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(sellingPrice);

  @JsonKey(ignore: true)
  @override
  _$BookCopyWith<_Book> get copyWith =>
      __$BookCopyWithImpl<_Book>(this, _$identity);
}

abstract class _Book implements Book {
  const factory _Book(
      {required BookStatus bookStatus,
      required Currency currency,
      required int sellingPrice}) = _$_Book;

  @override
  BookStatus get bookStatus => throw _privateConstructorUsedError;
  @override
  Currency get currency => throw _privateConstructorUsedError;
  @override
  int get sellingPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookCopyWith<_Book> get copyWith => throw _privateConstructorUsedError;
}
