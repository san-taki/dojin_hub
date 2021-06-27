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
class _$HomeStockTearOff {
  const _$HomeStockTearOff();

  _HomeStock call({required int count}) {
    return _HomeStock(
      count: count,
    );
  }
}

/// @nodoc
const $HomeStock = _$HomeStockTearOff();

/// @nodoc
mixin _$HomeStock {
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStockCopyWith<HomeStock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStockCopyWith<$Res> {
  factory $HomeStockCopyWith(HomeStock value, $Res Function(HomeStock) then) =
      _$HomeStockCopyWithImpl<$Res>;
  $Res call({int count});
}

/// @nodoc
class _$HomeStockCopyWithImpl<$Res> implements $HomeStockCopyWith<$Res> {
  _$HomeStockCopyWithImpl(this._value, this._then);

  final HomeStock _value;
  // ignore: unused_field
  final $Res Function(HomeStock) _then;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$HomeStockCopyWith<$Res> implements $HomeStockCopyWith<$Res> {
  factory _$HomeStockCopyWith(
          _HomeStock value, $Res Function(_HomeStock) then) =
      __$HomeStockCopyWithImpl<$Res>;
  @override
  $Res call({int count});
}

/// @nodoc
class __$HomeStockCopyWithImpl<$Res> extends _$HomeStockCopyWithImpl<$Res>
    implements _$HomeStockCopyWith<$Res> {
  __$HomeStockCopyWithImpl(_HomeStock _value, $Res Function(_HomeStock) _then)
      : super(_value, (v) => _then(v as _HomeStock));

  @override
  _HomeStock get _value => super._value as _HomeStock;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_HomeStock(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeStock implements _HomeStock {
  const _$_HomeStock({required this.count});

  @override
  final int count;

  @override
  String toString() {
    return 'HomeStock(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeStock &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(count);

  @JsonKey(ignore: true)
  @override
  _$HomeStockCopyWith<_HomeStock> get copyWith =>
      __$HomeStockCopyWithImpl<_HomeStock>(this, _$identity);
}

abstract class _HomeStock implements HomeStock {
  const factory _HomeStock({required int count}) = _$_HomeStock;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeStockCopyWith<_HomeStock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OutSourcerStockTearOff {
  const _$OutSourcerStockTearOff();

  _OutSourcerStock call(
      {required int count,
      required Outsourcer outsourcer,
      required OutsourcingPrice price}) {
    return _OutSourcerStock(
      count: count,
      outsourcer: outsourcer,
      price: price,
    );
  }
}

/// @nodoc
const $OutSourcerStock = _$OutSourcerStockTearOff();

/// @nodoc
mixin _$OutSourcerStock {
  int get count => throw _privateConstructorUsedError;
  Outsourcer get outsourcer => throw _privateConstructorUsedError;
  OutsourcingPrice get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OutSourcerStockCopyWith<OutSourcerStock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutSourcerStockCopyWith<$Res> {
  factory $OutSourcerStockCopyWith(
          OutSourcerStock value, $Res Function(OutSourcerStock) then) =
      _$OutSourcerStockCopyWithImpl<$Res>;
  $Res call({int count, Outsourcer outsourcer, OutsourcingPrice price});

  $OutsourcerCopyWith<$Res> get outsourcer;
}

/// @nodoc
class _$OutSourcerStockCopyWithImpl<$Res>
    implements $OutSourcerStockCopyWith<$Res> {
  _$OutSourcerStockCopyWithImpl(this._value, this._then);

  final OutSourcerStock _value;
  // ignore: unused_field
  final $Res Function(OutSourcerStock) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? outsourcer = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      outsourcer: outsourcer == freezed
          ? _value.outsourcer
          : outsourcer // ignore: cast_nullable_to_non_nullable
              as Outsourcer,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as OutsourcingPrice,
    ));
  }

  @override
  $OutsourcerCopyWith<$Res> get outsourcer {
    return $OutsourcerCopyWith<$Res>(_value.outsourcer, (value) {
      return _then(_value.copyWith(outsourcer: value));
    });
  }
}

/// @nodoc
abstract class _$OutSourcerStockCopyWith<$Res>
    implements $OutSourcerStockCopyWith<$Res> {
  factory _$OutSourcerStockCopyWith(
          _OutSourcerStock value, $Res Function(_OutSourcerStock) then) =
      __$OutSourcerStockCopyWithImpl<$Res>;
  @override
  $Res call({int count, Outsourcer outsourcer, OutsourcingPrice price});

  @override
  $OutsourcerCopyWith<$Res> get outsourcer;
}

/// @nodoc
class __$OutSourcerStockCopyWithImpl<$Res>
    extends _$OutSourcerStockCopyWithImpl<$Res>
    implements _$OutSourcerStockCopyWith<$Res> {
  __$OutSourcerStockCopyWithImpl(
      _OutSourcerStock _value, $Res Function(_OutSourcerStock) _then)
      : super(_value, (v) => _then(v as _OutSourcerStock));

  @override
  _OutSourcerStock get _value => super._value as _OutSourcerStock;

  @override
  $Res call({
    Object? count = freezed,
    Object? outsourcer = freezed,
    Object? price = freezed,
  }) {
    return _then(_OutSourcerStock(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      outsourcer: outsourcer == freezed
          ? _value.outsourcer
          : outsourcer // ignore: cast_nullable_to_non_nullable
              as Outsourcer,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as OutsourcingPrice,
    ));
  }
}

/// @nodoc

class _$_OutSourcerStock implements _OutSourcerStock {
  const _$_OutSourcerStock(
      {required this.count, required this.outsourcer, required this.price});

  @override
  final int count;
  @override
  final Outsourcer outsourcer;
  @override
  final OutsourcingPrice price;

  @override
  String toString() {
    return 'OutSourcerStock(count: $count, outsourcer: $outsourcer, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutSourcerStock &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.outsourcer, outsourcer) ||
                const DeepCollectionEquality()
                    .equals(other.outsourcer, outsourcer)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(outsourcer) ^
      const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$OutSourcerStockCopyWith<_OutSourcerStock> get copyWith =>
      __$OutSourcerStockCopyWithImpl<_OutSourcerStock>(this, _$identity);
}

abstract class _OutSourcerStock implements OutSourcerStock {
  const factory _OutSourcerStock(
      {required int count,
      required Outsourcer outsourcer,
      required OutsourcingPrice price}) = _$_OutSourcerStock;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  Outsourcer get outsourcer => throw _privateConstructorUsedError;
  @override
  OutsourcingPrice get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutSourcerStockCopyWith<_OutSourcerStock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ExtraStockTearOff {
  const _$ExtraStockTearOff();

  _ExtraStock call({required int count, required String label}) {
    return _ExtraStock(
      count: count,
      label: label,
    );
  }
}

/// @nodoc
const $ExtraStock = _$ExtraStockTearOff();

/// @nodoc
mixin _$ExtraStock {
  int get count => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExtraStockCopyWith<ExtraStock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtraStockCopyWith<$Res> {
  factory $ExtraStockCopyWith(
          ExtraStock value, $Res Function(ExtraStock) then) =
      _$ExtraStockCopyWithImpl<$Res>;
  $Res call({int count, String label});
}

/// @nodoc
class _$ExtraStockCopyWithImpl<$Res> implements $ExtraStockCopyWith<$Res> {
  _$ExtraStockCopyWithImpl(this._value, this._then);

  final ExtraStock _value;
  // ignore: unused_field
  final $Res Function(ExtraStock) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ExtraStockCopyWith<$Res> implements $ExtraStockCopyWith<$Res> {
  factory _$ExtraStockCopyWith(
          _ExtraStock value, $Res Function(_ExtraStock) then) =
      __$ExtraStockCopyWithImpl<$Res>;
  @override
  $Res call({int count, String label});
}

/// @nodoc
class __$ExtraStockCopyWithImpl<$Res> extends _$ExtraStockCopyWithImpl<$Res>
    implements _$ExtraStockCopyWith<$Res> {
  __$ExtraStockCopyWithImpl(
      _ExtraStock _value, $Res Function(_ExtraStock) _then)
      : super(_value, (v) => _then(v as _ExtraStock));

  @override
  _ExtraStock get _value => super._value as _ExtraStock;

  @override
  $Res call({
    Object? count = freezed,
    Object? label = freezed,
  }) {
    return _then(_ExtraStock(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ExtraStock implements _ExtraStock {
  const _$_ExtraStock({required this.count, required this.label});

  @override
  final int count;
  @override
  final String label;

  @override
  String toString() {
    return 'ExtraStock(count: $count, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExtraStock &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(label);

  @JsonKey(ignore: true)
  @override
  _$ExtraStockCopyWith<_ExtraStock> get copyWith =>
      __$ExtraStockCopyWithImpl<_ExtraStock>(this, _$identity);
}

abstract class _ExtraStock implements ExtraStock {
  const factory _ExtraStock({required int count, required String label}) =
      _$_ExtraStock;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  String get label => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExtraStockCopyWith<_ExtraStock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SoldByOutsourcerTearOff {
  const _$SoldByOutsourcerTearOff();

  _SoldByOutsourcer call(
      {required int count,
      required Outsourcer outsourcer,
      required OutsourcingPrice price}) {
    return _SoldByOutsourcer(
      count: count,
      outsourcer: outsourcer,
      price: price,
    );
  }
}

/// @nodoc
const $SoldByOutsourcer = _$SoldByOutsourcerTearOff();

/// @nodoc
mixin _$SoldByOutsourcer {
  int get count => throw _privateConstructorUsedError;
  Outsourcer get outsourcer => throw _privateConstructorUsedError;
  OutsourcingPrice get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SoldByOutsourcerCopyWith<SoldByOutsourcer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoldByOutsourcerCopyWith<$Res> {
  factory $SoldByOutsourcerCopyWith(
          SoldByOutsourcer value, $Res Function(SoldByOutsourcer) then) =
      _$SoldByOutsourcerCopyWithImpl<$Res>;
  $Res call({int count, Outsourcer outsourcer, OutsourcingPrice price});

  $OutsourcerCopyWith<$Res> get outsourcer;
}

/// @nodoc
class _$SoldByOutsourcerCopyWithImpl<$Res>
    implements $SoldByOutsourcerCopyWith<$Res> {
  _$SoldByOutsourcerCopyWithImpl(this._value, this._then);

  final SoldByOutsourcer _value;
  // ignore: unused_field
  final $Res Function(SoldByOutsourcer) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? outsourcer = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      outsourcer: outsourcer == freezed
          ? _value.outsourcer
          : outsourcer // ignore: cast_nullable_to_non_nullable
              as Outsourcer,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as OutsourcingPrice,
    ));
  }

  @override
  $OutsourcerCopyWith<$Res> get outsourcer {
    return $OutsourcerCopyWith<$Res>(_value.outsourcer, (value) {
      return _then(_value.copyWith(outsourcer: value));
    });
  }
}

/// @nodoc
abstract class _$SoldByOutsourcerCopyWith<$Res>
    implements $SoldByOutsourcerCopyWith<$Res> {
  factory _$SoldByOutsourcerCopyWith(
          _SoldByOutsourcer value, $Res Function(_SoldByOutsourcer) then) =
      __$SoldByOutsourcerCopyWithImpl<$Res>;
  @override
  $Res call({int count, Outsourcer outsourcer, OutsourcingPrice price});

  @override
  $OutsourcerCopyWith<$Res> get outsourcer;
}

/// @nodoc
class __$SoldByOutsourcerCopyWithImpl<$Res>
    extends _$SoldByOutsourcerCopyWithImpl<$Res>
    implements _$SoldByOutsourcerCopyWith<$Res> {
  __$SoldByOutsourcerCopyWithImpl(
      _SoldByOutsourcer _value, $Res Function(_SoldByOutsourcer) _then)
      : super(_value, (v) => _then(v as _SoldByOutsourcer));

  @override
  _SoldByOutsourcer get _value => super._value as _SoldByOutsourcer;

  @override
  $Res call({
    Object? count = freezed,
    Object? outsourcer = freezed,
    Object? price = freezed,
  }) {
    return _then(_SoldByOutsourcer(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      outsourcer: outsourcer == freezed
          ? _value.outsourcer
          : outsourcer // ignore: cast_nullable_to_non_nullable
              as Outsourcer,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as OutsourcingPrice,
    ));
  }
}

/// @nodoc

class _$_SoldByOutsourcer implements _SoldByOutsourcer {
  const _$_SoldByOutsourcer(
      {required this.count, required this.outsourcer, required this.price});

  @override
  final int count;
  @override
  final Outsourcer outsourcer;
  @override
  final OutsourcingPrice price;

  @override
  String toString() {
    return 'SoldByOutsourcer(count: $count, outsourcer: $outsourcer, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SoldByOutsourcer &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.outsourcer, outsourcer) ||
                const DeepCollectionEquality()
                    .equals(other.outsourcer, outsourcer)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(outsourcer) ^
      const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$SoldByOutsourcerCopyWith<_SoldByOutsourcer> get copyWith =>
      __$SoldByOutsourcerCopyWithImpl<_SoldByOutsourcer>(this, _$identity);
}

abstract class _SoldByOutsourcer implements SoldByOutsourcer {
  const factory _SoldByOutsourcer(
      {required int count,
      required Outsourcer outsourcer,
      required OutsourcingPrice price}) = _$_SoldByOutsourcer;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  Outsourcer get outsourcer => throw _privateConstructorUsedError;
  @override
  OutsourcingPrice get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SoldByOutsourcerCopyWith<_SoldByOutsourcer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SoldAtDojinEventTearOff {
  const _$SoldAtDojinEventTearOff();

  _SoldAtDojinEvent call(
      {required int count,
      required DojinEvent dojinEvent,
      required Price price}) {
    return _SoldAtDojinEvent(
      count: count,
      dojinEvent: dojinEvent,
      price: price,
    );
  }
}

/// @nodoc
const $SoldAtDojinEvent = _$SoldAtDojinEventTearOff();

/// @nodoc
mixin _$SoldAtDojinEvent {
  int get count => throw _privateConstructorUsedError;
  DojinEvent get dojinEvent => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SoldAtDojinEventCopyWith<SoldAtDojinEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoldAtDojinEventCopyWith<$Res> {
  factory $SoldAtDojinEventCopyWith(
          SoldAtDojinEvent value, $Res Function(SoldAtDojinEvent) then) =
      _$SoldAtDojinEventCopyWithImpl<$Res>;
  $Res call({int count, DojinEvent dojinEvent, Price price});

  $DojinEventCopyWith<$Res> get dojinEvent;
}

/// @nodoc
class _$SoldAtDojinEventCopyWithImpl<$Res>
    implements $SoldAtDojinEventCopyWith<$Res> {
  _$SoldAtDojinEventCopyWithImpl(this._value, this._then);

  final SoldAtDojinEvent _value;
  // ignore: unused_field
  final $Res Function(SoldAtDojinEvent) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? dojinEvent = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      dojinEvent: dojinEvent == freezed
          ? _value.dojinEvent
          : dojinEvent // ignore: cast_nullable_to_non_nullable
              as DojinEvent,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ));
  }

  @override
  $DojinEventCopyWith<$Res> get dojinEvent {
    return $DojinEventCopyWith<$Res>(_value.dojinEvent, (value) {
      return _then(_value.copyWith(dojinEvent: value));
    });
  }
}

/// @nodoc
abstract class _$SoldAtDojinEventCopyWith<$Res>
    implements $SoldAtDojinEventCopyWith<$Res> {
  factory _$SoldAtDojinEventCopyWith(
          _SoldAtDojinEvent value, $Res Function(_SoldAtDojinEvent) then) =
      __$SoldAtDojinEventCopyWithImpl<$Res>;
  @override
  $Res call({int count, DojinEvent dojinEvent, Price price});

  @override
  $DojinEventCopyWith<$Res> get dojinEvent;
}

/// @nodoc
class __$SoldAtDojinEventCopyWithImpl<$Res>
    extends _$SoldAtDojinEventCopyWithImpl<$Res>
    implements _$SoldAtDojinEventCopyWith<$Res> {
  __$SoldAtDojinEventCopyWithImpl(
      _SoldAtDojinEvent _value, $Res Function(_SoldAtDojinEvent) _then)
      : super(_value, (v) => _then(v as _SoldAtDojinEvent));

  @override
  _SoldAtDojinEvent get _value => super._value as _SoldAtDojinEvent;

  @override
  $Res call({
    Object? count = freezed,
    Object? dojinEvent = freezed,
    Object? price = freezed,
  }) {
    return _then(_SoldAtDojinEvent(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      dojinEvent: dojinEvent == freezed
          ? _value.dojinEvent
          : dojinEvent // ignore: cast_nullable_to_non_nullable
              as DojinEvent,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ));
  }
}

/// @nodoc

class _$_SoldAtDojinEvent implements _SoldAtDojinEvent {
  const _$_SoldAtDojinEvent(
      {required this.count, required this.dojinEvent, required this.price});

  @override
  final int count;
  @override
  final DojinEvent dojinEvent;
  @override
  final Price price;

  @override
  String toString() {
    return 'SoldAtDojinEvent(count: $count, dojinEvent: $dojinEvent, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SoldAtDojinEvent &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.dojinEvent, dojinEvent) ||
                const DeepCollectionEquality()
                    .equals(other.dojinEvent, dojinEvent)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(dojinEvent) ^
      const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$SoldAtDojinEventCopyWith<_SoldAtDojinEvent> get copyWith =>
      __$SoldAtDojinEventCopyWithImpl<_SoldAtDojinEvent>(this, _$identity);
}

abstract class _SoldAtDojinEvent implements SoldAtDojinEvent {
  const factory _SoldAtDojinEvent(
      {required int count,
      required DojinEvent dojinEvent,
      required Price price}) = _$_SoldAtDojinEvent;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  DojinEvent get dojinEvent => throw _privateConstructorUsedError;
  @override
  Price get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SoldAtDojinEventCopyWith<_SoldAtDojinEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FreeDistributionTearOff {
  const _$FreeDistributionTearOff();

  _FreeDistribution call({required int count, required DojinEvent dojinEvent}) {
    return _FreeDistribution(
      count: count,
      dojinEvent: dojinEvent,
    );
  }
}

/// @nodoc
const $FreeDistribution = _$FreeDistributionTearOff();

/// @nodoc
mixin _$FreeDistribution {
  int get count => throw _privateConstructorUsedError;
  DojinEvent get dojinEvent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FreeDistributionCopyWith<FreeDistribution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeDistributionCopyWith<$Res> {
  factory $FreeDistributionCopyWith(
          FreeDistribution value, $Res Function(FreeDistribution) then) =
      _$FreeDistributionCopyWithImpl<$Res>;
  $Res call({int count, DojinEvent dojinEvent});

  $DojinEventCopyWith<$Res> get dojinEvent;
}

/// @nodoc
class _$FreeDistributionCopyWithImpl<$Res>
    implements $FreeDistributionCopyWith<$Res> {
  _$FreeDistributionCopyWithImpl(this._value, this._then);

  final FreeDistribution _value;
  // ignore: unused_field
  final $Res Function(FreeDistribution) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? dojinEvent = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      dojinEvent: dojinEvent == freezed
          ? _value.dojinEvent
          : dojinEvent // ignore: cast_nullable_to_non_nullable
              as DojinEvent,
    ));
  }

  @override
  $DojinEventCopyWith<$Res> get dojinEvent {
    return $DojinEventCopyWith<$Res>(_value.dojinEvent, (value) {
      return _then(_value.copyWith(dojinEvent: value));
    });
  }
}

/// @nodoc
abstract class _$FreeDistributionCopyWith<$Res>
    implements $FreeDistributionCopyWith<$Res> {
  factory _$FreeDistributionCopyWith(
          _FreeDistribution value, $Res Function(_FreeDistribution) then) =
      __$FreeDistributionCopyWithImpl<$Res>;
  @override
  $Res call({int count, DojinEvent dojinEvent});

  @override
  $DojinEventCopyWith<$Res> get dojinEvent;
}

/// @nodoc
class __$FreeDistributionCopyWithImpl<$Res>
    extends _$FreeDistributionCopyWithImpl<$Res>
    implements _$FreeDistributionCopyWith<$Res> {
  __$FreeDistributionCopyWithImpl(
      _FreeDistribution _value, $Res Function(_FreeDistribution) _then)
      : super(_value, (v) => _then(v as _FreeDistribution));

  @override
  _FreeDistribution get _value => super._value as _FreeDistribution;

  @override
  $Res call({
    Object? count = freezed,
    Object? dojinEvent = freezed,
  }) {
    return _then(_FreeDistribution(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      dojinEvent: dojinEvent == freezed
          ? _value.dojinEvent
          : dojinEvent // ignore: cast_nullable_to_non_nullable
              as DojinEvent,
    ));
  }
}

/// @nodoc

class _$_FreeDistribution implements _FreeDistribution {
  const _$_FreeDistribution({required this.count, required this.dojinEvent});

  @override
  final int count;
  @override
  final DojinEvent dojinEvent;

  @override
  String toString() {
    return 'FreeDistribution(count: $count, dojinEvent: $dojinEvent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FreeDistribution &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.dojinEvent, dojinEvent) ||
                const DeepCollectionEquality()
                    .equals(other.dojinEvent, dojinEvent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(dojinEvent);

  @JsonKey(ignore: true)
  @override
  _$FreeDistributionCopyWith<_FreeDistribution> get copyWith =>
      __$FreeDistributionCopyWithImpl<_FreeDistribution>(this, _$identity);
}

abstract class _FreeDistribution implements FreeDistribution {
  const factory _FreeDistribution(
      {required int count,
      required DojinEvent dojinEvent}) = _$_FreeDistribution;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  DojinEvent get dojinEvent => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FreeDistributionCopyWith<_FreeDistribution> get copyWith =>
      throw _privateConstructorUsedError;
}
