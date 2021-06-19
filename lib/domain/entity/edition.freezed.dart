// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'edition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditionTearOff {
  const _$EditionTearOff();

  _Edition call(
      {required int number,
      required PrintShop printShop,
      required DateTime publicationDate,
      required List<Book> books}) {
    return _Edition(
      number: number,
      printShop: printShop,
      publicationDate: publicationDate,
      books: books,
    );
  }
}

/// @nodoc
const $Edition = _$EditionTearOff();

/// @nodoc
mixin _$Edition {
  int get number => throw _privateConstructorUsedError;
  PrintShop get printShop => throw _privateConstructorUsedError;
  DateTime get publicationDate => throw _privateConstructorUsedError;
  List<Book> get books => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditionCopyWith<Edition> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditionCopyWith<$Res> {
  factory $EditionCopyWith(Edition value, $Res Function(Edition) then) =
      _$EditionCopyWithImpl<$Res>;
  $Res call(
      {int number,
      PrintShop printShop,
      DateTime publicationDate,
      List<Book> books});

  $PrintShopCopyWith<$Res> get printShop;
}

/// @nodoc
class _$EditionCopyWithImpl<$Res> implements $EditionCopyWith<$Res> {
  _$EditionCopyWithImpl(this._value, this._then);

  final Edition _value;
  // ignore: unused_field
  final $Res Function(Edition) _then;

  @override
  $Res call({
    Object? number = freezed,
    Object? printShop = freezed,
    Object? publicationDate = freezed,
    Object? books = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      printShop: printShop == freezed
          ? _value.printShop
          : printShop // ignore: cast_nullable_to_non_nullable
              as PrintShop,
      publicationDate: publicationDate == freezed
          ? _value.publicationDate
          : publicationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }

  @override
  $PrintShopCopyWith<$Res> get printShop {
    return $PrintShopCopyWith<$Res>(_value.printShop, (value) {
      return _then(_value.copyWith(printShop: value));
    });
  }
}

/// @nodoc
abstract class _$EditionCopyWith<$Res> implements $EditionCopyWith<$Res> {
  factory _$EditionCopyWith(_Edition value, $Res Function(_Edition) then) =
      __$EditionCopyWithImpl<$Res>;
  @override
  $Res call(
      {int number,
      PrintShop printShop,
      DateTime publicationDate,
      List<Book> books});

  @override
  $PrintShopCopyWith<$Res> get printShop;
}

/// @nodoc
class __$EditionCopyWithImpl<$Res> extends _$EditionCopyWithImpl<$Res>
    implements _$EditionCopyWith<$Res> {
  __$EditionCopyWithImpl(_Edition _value, $Res Function(_Edition) _then)
      : super(_value, (v) => _then(v as _Edition));

  @override
  _Edition get _value => super._value as _Edition;

  @override
  $Res call({
    Object? number = freezed,
    Object? printShop = freezed,
    Object? publicationDate = freezed,
    Object? books = freezed,
  }) {
    return _then(_Edition(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      printShop: printShop == freezed
          ? _value.printShop
          : printShop // ignore: cast_nullable_to_non_nullable
              as PrintShop,
      publicationDate: publicationDate == freezed
          ? _value.publicationDate
          : publicationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc

class _$_Edition extends _Edition {
  const _$_Edition(
      {required this.number,
      required this.printShop,
      required this.publicationDate,
      required this.books})
      : super._();

  @override
  final int number;
  @override
  final PrintShop printShop;
  @override
  final DateTime publicationDate;
  @override
  final List<Book> books;

  @override
  String toString() {
    return 'Edition(number: $number, printShop: $printShop, publicationDate: $publicationDate, books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Edition &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.printShop, printShop) ||
                const DeepCollectionEquality()
                    .equals(other.printShop, printShop)) &&
            (identical(other.publicationDate, publicationDate) ||
                const DeepCollectionEquality()
                    .equals(other.publicationDate, publicationDate)) &&
            (identical(other.books, books) ||
                const DeepCollectionEquality().equals(other.books, books)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(printShop) ^
      const DeepCollectionEquality().hash(publicationDate) ^
      const DeepCollectionEquality().hash(books);

  @JsonKey(ignore: true)
  @override
  _$EditionCopyWith<_Edition> get copyWith =>
      __$EditionCopyWithImpl<_Edition>(this, _$identity);
}

abstract class _Edition extends Edition {
  const factory _Edition(
      {required int number,
      required PrintShop printShop,
      required DateTime publicationDate,
      required List<Book> books}) = _$_Edition;
  const _Edition._() : super._();

  @override
  int get number => throw _privateConstructorUsedError;
  @override
  PrintShop get printShop => throw _privateConstructorUsedError;
  @override
  DateTime get publicationDate => throw _privateConstructorUsedError;
  @override
  List<Book> get books => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EditionCopyWith<_Edition> get copyWith =>
      throw _privateConstructorUsedError;
}
