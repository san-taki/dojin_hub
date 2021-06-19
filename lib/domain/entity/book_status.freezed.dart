// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'book_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookStatusTearOff {
  const _$BookStatusTearOff();

  _HomeStock homeStock() {
    return const _HomeStock();
  }

  _OutsourcerStock outsourcerStock(
      {required Outsourcer outsourcer, required OutsourcingPrice price}) {
    return _OutsourcerStock(
      outsourcer: outsourcer,
      price: price,
    );
  }

  _ExtraStock extraStock({required String label}) {
    return _ExtraStock(
      label: label,
    );
  }

  _SoldByOutsourcer soldByOutsourcer(
      {required Outsourcer outsourcer, required OutsourcingPrice price}) {
    return _SoldByOutsourcer(
      outsourcer: outsourcer,
      price: price,
    );
  }

  _SoldAtDojinEvent soldAtDojinEvent(
      {required DojinEvent dojinEvent, required Price price}) {
    return _SoldAtDojinEvent(
      dojinEvent: dojinEvent,
      price: price,
    );
  }

  _FreeDistribution freeDistribution({required DojinEvent dojinEvent}) {
    return _FreeDistribution(
      dojinEvent: dojinEvent,
    );
  }
}

/// @nodoc
const $BookStatus = _$BookStatusTearOff();

/// @nodoc
mixin _$BookStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeStock,
    required TResult Function(Outsourcer outsourcer, OutsourcingPrice price)
        outsourcerStock,
    required TResult Function(String label) extraStock,
    required TResult Function(Outsourcer outsourcer, OutsourcingPrice price)
        soldByOutsourcer,
    required TResult Function(DojinEvent dojinEvent, Price price)
        soldAtDojinEvent,
    required TResult Function(DojinEvent dojinEvent) freeDistribution,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeStock,
    TResult Function(Outsourcer outsourcer, OutsourcingPrice price)?
        outsourcerStock,
    TResult Function(String label)? extraStock,
    TResult Function(Outsourcer outsourcer, OutsourcingPrice price)?
        soldByOutsourcer,
    TResult Function(DojinEvent dojinEvent, Price price)? soldAtDojinEvent,
    TResult Function(DojinEvent dojinEvent)? freeDistribution,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStock value) homeStock,
    required TResult Function(_OutsourcerStock value) outsourcerStock,
    required TResult Function(_ExtraStock value) extraStock,
    required TResult Function(_SoldByOutsourcer value) soldByOutsourcer,
    required TResult Function(_SoldAtDojinEvent value) soldAtDojinEvent,
    required TResult Function(_FreeDistribution value) freeDistribution,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStock value)? homeStock,
    TResult Function(_OutsourcerStock value)? outsourcerStock,
    TResult Function(_ExtraStock value)? extraStock,
    TResult Function(_SoldByOutsourcer value)? soldByOutsourcer,
    TResult Function(_SoldAtDojinEvent value)? soldAtDojinEvent,
    TResult Function(_FreeDistribution value)? freeDistribution,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookStatusCopyWith<$Res> {
  factory $BookStatusCopyWith(
          BookStatus value, $Res Function(BookStatus) then) =
      _$BookStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookStatusCopyWithImpl<$Res> implements $BookStatusCopyWith<$Res> {
  _$BookStatusCopyWithImpl(this._value, this._then);

  final BookStatus _value;
  // ignore: unused_field
  final $Res Function(BookStatus) _then;
}

/// @nodoc
abstract class _$HomeStockCopyWith<$Res> {
  factory _$HomeStockCopyWith(
          _HomeStock value, $Res Function(_HomeStock) then) =
      __$HomeStockCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeStockCopyWithImpl<$Res> extends _$BookStatusCopyWithImpl<$Res>
    implements _$HomeStockCopyWith<$Res> {
  __$HomeStockCopyWithImpl(_HomeStock _value, $Res Function(_HomeStock) _then)
      : super(_value, (v) => _then(v as _HomeStock));

  @override
  _HomeStock get _value => super._value as _HomeStock;
}

/// @nodoc

class _$_HomeStock extends _HomeStock {
  const _$_HomeStock() : super._();

  @override
  String toString() {
    return 'BookStatus.homeStock()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HomeStock);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeStock,
    required TResult Function(Outsourcer outsourcer, OutsourcingPrice price)
        outsourcerStock,
    required TResult Function(String label) extraStock,
    required TResult Function(Outsourcer outsourcer, OutsourcingPrice price)
        soldByOutsourcer,
    required TResult Function(DojinEvent dojinEvent, Price price)
        soldAtDojinEvent,
    required TResult Function(DojinEvent dojinEvent) freeDistribution,
  }) {
    return homeStock();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeStock,
    TResult Function(Outsourcer outsourcer, OutsourcingPrice price)?
        outsourcerStock,
    TResult Function(String label)? extraStock,
    TResult Function(Outsourcer outsourcer, OutsourcingPrice price)?
        soldByOutsourcer,
    TResult Function(DojinEvent dojinEvent, Price price)? soldAtDojinEvent,
    TResult Function(DojinEvent dojinEvent)? freeDistribution,
    required TResult orElse(),
  }) {
    if (homeStock != null) {
      return homeStock();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStock value) homeStock,
    required TResult Function(_OutsourcerStock value) outsourcerStock,
    required TResult Function(_ExtraStock value) extraStock,
    required TResult Function(_SoldByOutsourcer value) soldByOutsourcer,
    required TResult Function(_SoldAtDojinEvent value) soldAtDojinEvent,
    required TResult Function(_FreeDistribution value) freeDistribution,
  }) {
    return homeStock(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStock value)? homeStock,
    TResult Function(_OutsourcerStock value)? outsourcerStock,
    TResult Function(_ExtraStock value)? extraStock,
    TResult Function(_SoldByOutsourcer value)? soldByOutsourcer,
    TResult Function(_SoldAtDojinEvent value)? soldAtDojinEvent,
    TResult Function(_FreeDistribution value)? freeDistribution,
    required TResult orElse(),
  }) {
    if (homeStock != null) {
      return homeStock(this);
    }
    return orElse();
  }
}

abstract class _HomeStock extends BookStatus {
  const factory _HomeStock() = _$_HomeStock;
  const _HomeStock._() : super._();
}

/// @nodoc
abstract class _$OutsourcerStockCopyWith<$Res> {
  factory _$OutsourcerStockCopyWith(
          _OutsourcerStock value, $Res Function(_OutsourcerStock) then) =
      __$OutsourcerStockCopyWithImpl<$Res>;
  $Res call({Outsourcer outsourcer, OutsourcingPrice price});

  $OutsourcerCopyWith<$Res> get outsourcer;
}

/// @nodoc
class __$OutsourcerStockCopyWithImpl<$Res>
    extends _$BookStatusCopyWithImpl<$Res>
    implements _$OutsourcerStockCopyWith<$Res> {
  __$OutsourcerStockCopyWithImpl(
      _OutsourcerStock _value, $Res Function(_OutsourcerStock) _then)
      : super(_value, (v) => _then(v as _OutsourcerStock));

  @override
  _OutsourcerStock get _value => super._value as _OutsourcerStock;

  @override
  $Res call({
    Object? outsourcer = freezed,
    Object? price = freezed,
  }) {
    return _then(_OutsourcerStock(
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

class _$_OutsourcerStock extends _OutsourcerStock {
  const _$_OutsourcerStock({required this.outsourcer, required this.price})
      : super._();

  @override
  final Outsourcer outsourcer;
  @override
  final OutsourcingPrice price;

  @override
  String toString() {
    return 'BookStatus.outsourcerStock(outsourcer: $outsourcer, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutsourcerStock &&
            (identical(other.outsourcer, outsourcer) ||
                const DeepCollectionEquality()
                    .equals(other.outsourcer, outsourcer)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(outsourcer) ^
      const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$OutsourcerStockCopyWith<_OutsourcerStock> get copyWith =>
      __$OutsourcerStockCopyWithImpl<_OutsourcerStock>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeStock,
    required TResult Function(Outsourcer outsourcer, OutsourcingPrice price)
        outsourcerStock,
    required TResult Function(String label) extraStock,
    required TResult Function(Outsourcer outsourcer, OutsourcingPrice price)
        soldByOutsourcer,
    required TResult Function(DojinEvent dojinEvent, Price price)
        soldAtDojinEvent,
    required TResult Function(DojinEvent dojinEvent) freeDistribution,
  }) {
    return outsourcerStock(outsourcer, price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeStock,
    TResult Function(Outsourcer outsourcer, OutsourcingPrice price)?
        outsourcerStock,
    TResult Function(String label)? extraStock,
    TResult Function(Outsourcer outsourcer, OutsourcingPrice price)?
        soldByOutsourcer,
    TResult Function(DojinEvent dojinEvent, Price price)? soldAtDojinEvent,
    TResult Function(DojinEvent dojinEvent)? freeDistribution,
    required TResult orElse(),
  }) {
    if (outsourcerStock != null) {
      return outsourcerStock(outsourcer, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStock value) homeStock,
    required TResult Function(_OutsourcerStock value) outsourcerStock,
    required TResult Function(_ExtraStock value) extraStock,
    required TResult Function(_SoldByOutsourcer value) soldByOutsourcer,
    required TResult Function(_SoldAtDojinEvent value) soldAtDojinEvent,
    required TResult Function(_FreeDistribution value) freeDistribution,
  }) {
    return outsourcerStock(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStock value)? homeStock,
    TResult Function(_OutsourcerStock value)? outsourcerStock,
    TResult Function(_ExtraStock value)? extraStock,
    TResult Function(_SoldByOutsourcer value)? soldByOutsourcer,
    TResult Function(_SoldAtDojinEvent value)? soldAtDojinEvent,
    TResult Function(_FreeDistribution value)? freeDistribution,
    required TResult orElse(),
  }) {
    if (outsourcerStock != null) {
      return outsourcerStock(this);
    }
    return orElse();
  }
}

abstract class _OutsourcerStock extends BookStatus {
  const factory _OutsourcerStock(
      {required Outsourcer outsourcer,
      required OutsourcingPrice price}) = _$_OutsourcerStock;
  const _OutsourcerStock._() : super._();

  Outsourcer get outsourcer => throw _privateConstructorUsedError;
  OutsourcingPrice get price => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OutsourcerStockCopyWith<_OutsourcerStock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ExtraStockCopyWith<$Res> {
  factory _$ExtraStockCopyWith(
          _ExtraStock value, $Res Function(_ExtraStock) then) =
      __$ExtraStockCopyWithImpl<$Res>;
  $Res call({String label});
}

/// @nodoc
class __$ExtraStockCopyWithImpl<$Res> extends _$BookStatusCopyWithImpl<$Res>
    implements _$ExtraStockCopyWith<$Res> {
  __$ExtraStockCopyWithImpl(
      _ExtraStock _value, $Res Function(_ExtraStock) _then)
      : super(_value, (v) => _then(v as _ExtraStock));

  @override
  _ExtraStock get _value => super._value as _ExtraStock;

  @override
  $Res call({
    Object? label = freezed,
  }) {
    return _then(_ExtraStock(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ExtraStock extends _ExtraStock {
  const _$_ExtraStock({required this.label}) : super._();

  @override
  final String label;

  @override
  String toString() {
    return 'BookStatus.extraStock(label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExtraStock &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(label);

  @JsonKey(ignore: true)
  @override
  _$ExtraStockCopyWith<_ExtraStock> get copyWith =>
      __$ExtraStockCopyWithImpl<_ExtraStock>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeStock,
    required TResult Function(Outsourcer outsourcer, OutsourcingPrice price)
        outsourcerStock,
    required TResult Function(String label) extraStock,
    required TResult Function(Outsourcer outsourcer, OutsourcingPrice price)
        soldByOutsourcer,
    required TResult Function(DojinEvent dojinEvent, Price price)
        soldAtDojinEvent,
    required TResult Function(DojinEvent dojinEvent) freeDistribution,
  }) {
    return extraStock(label);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeStock,
    TResult Function(Outsourcer outsourcer, OutsourcingPrice price)?
        outsourcerStock,
    TResult Function(String label)? extraStock,
    TResult Function(Outsourcer outsourcer, OutsourcingPrice price)?
        soldByOutsourcer,
    TResult Function(DojinEvent dojinEvent, Price price)? soldAtDojinEvent,
    TResult Function(DojinEvent dojinEvent)? freeDistribution,
    required TResult orElse(),
  }) {
    if (extraStock != null) {
      return extraStock(label);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStock value) homeStock,
    required TResult Function(_OutsourcerStock value) outsourcerStock,
    required TResult Function(_ExtraStock value) extraStock,
    required TResult Function(_SoldByOutsourcer value) soldByOutsourcer,
    required TResult Function(_SoldAtDojinEvent value) soldAtDojinEvent,
    required TResult Function(_FreeDistribution value) freeDistribution,
  }) {
    return extraStock(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStock value)? homeStock,
    TResult Function(_OutsourcerStock value)? outsourcerStock,
    TResult Function(_ExtraStock value)? extraStock,
    TResult Function(_SoldByOutsourcer value)? soldByOutsourcer,
    TResult Function(_SoldAtDojinEvent value)? soldAtDojinEvent,
    TResult Function(_FreeDistribution value)? freeDistribution,
    required TResult orElse(),
  }) {
    if (extraStock != null) {
      return extraStock(this);
    }
    return orElse();
  }
}

abstract class _ExtraStock extends BookStatus {
  const factory _ExtraStock({required String label}) = _$_ExtraStock;
  const _ExtraStock._() : super._();

  String get label => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ExtraStockCopyWith<_ExtraStock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SoldByOutsourcerCopyWith<$Res> {
  factory _$SoldByOutsourcerCopyWith(
          _SoldByOutsourcer value, $Res Function(_SoldByOutsourcer) then) =
      __$SoldByOutsourcerCopyWithImpl<$Res>;
  $Res call({Outsourcer outsourcer, OutsourcingPrice price});

  $OutsourcerCopyWith<$Res> get outsourcer;
}

/// @nodoc
class __$SoldByOutsourcerCopyWithImpl<$Res>
    extends _$BookStatusCopyWithImpl<$Res>
    implements _$SoldByOutsourcerCopyWith<$Res> {
  __$SoldByOutsourcerCopyWithImpl(
      _SoldByOutsourcer _value, $Res Function(_SoldByOutsourcer) _then)
      : super(_value, (v) => _then(v as _SoldByOutsourcer));

  @override
  _SoldByOutsourcer get _value => super._value as _SoldByOutsourcer;

  @override
  $Res call({
    Object? outsourcer = freezed,
    Object? price = freezed,
  }) {
    return _then(_SoldByOutsourcer(
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

class _$_SoldByOutsourcer extends _SoldByOutsourcer {
  const _$_SoldByOutsourcer({required this.outsourcer, required this.price})
      : super._();

  @override
  final Outsourcer outsourcer;
  @override
  final OutsourcingPrice price;

  @override
  String toString() {
    return 'BookStatus.soldByOutsourcer(outsourcer: $outsourcer, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SoldByOutsourcer &&
            (identical(other.outsourcer, outsourcer) ||
                const DeepCollectionEquality()
                    .equals(other.outsourcer, outsourcer)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(outsourcer) ^
      const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$SoldByOutsourcerCopyWith<_SoldByOutsourcer> get copyWith =>
      __$SoldByOutsourcerCopyWithImpl<_SoldByOutsourcer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeStock,
    required TResult Function(Outsourcer outsourcer, OutsourcingPrice price)
        outsourcerStock,
    required TResult Function(String label) extraStock,
    required TResult Function(Outsourcer outsourcer, OutsourcingPrice price)
        soldByOutsourcer,
    required TResult Function(DojinEvent dojinEvent, Price price)
        soldAtDojinEvent,
    required TResult Function(DojinEvent dojinEvent) freeDistribution,
  }) {
    return soldByOutsourcer(outsourcer, price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeStock,
    TResult Function(Outsourcer outsourcer, OutsourcingPrice price)?
        outsourcerStock,
    TResult Function(String label)? extraStock,
    TResult Function(Outsourcer outsourcer, OutsourcingPrice price)?
        soldByOutsourcer,
    TResult Function(DojinEvent dojinEvent, Price price)? soldAtDojinEvent,
    TResult Function(DojinEvent dojinEvent)? freeDistribution,
    required TResult orElse(),
  }) {
    if (soldByOutsourcer != null) {
      return soldByOutsourcer(outsourcer, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStock value) homeStock,
    required TResult Function(_OutsourcerStock value) outsourcerStock,
    required TResult Function(_ExtraStock value) extraStock,
    required TResult Function(_SoldByOutsourcer value) soldByOutsourcer,
    required TResult Function(_SoldAtDojinEvent value) soldAtDojinEvent,
    required TResult Function(_FreeDistribution value) freeDistribution,
  }) {
    return soldByOutsourcer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStock value)? homeStock,
    TResult Function(_OutsourcerStock value)? outsourcerStock,
    TResult Function(_ExtraStock value)? extraStock,
    TResult Function(_SoldByOutsourcer value)? soldByOutsourcer,
    TResult Function(_SoldAtDojinEvent value)? soldAtDojinEvent,
    TResult Function(_FreeDistribution value)? freeDistribution,
    required TResult orElse(),
  }) {
    if (soldByOutsourcer != null) {
      return soldByOutsourcer(this);
    }
    return orElse();
  }
}

abstract class _SoldByOutsourcer extends BookStatus {
  const factory _SoldByOutsourcer(
      {required Outsourcer outsourcer,
      required OutsourcingPrice price}) = _$_SoldByOutsourcer;
  const _SoldByOutsourcer._() : super._();

  Outsourcer get outsourcer => throw _privateConstructorUsedError;
  OutsourcingPrice get price => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SoldByOutsourcerCopyWith<_SoldByOutsourcer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SoldAtDojinEventCopyWith<$Res> {
  factory _$SoldAtDojinEventCopyWith(
          _SoldAtDojinEvent value, $Res Function(_SoldAtDojinEvent) then) =
      __$SoldAtDojinEventCopyWithImpl<$Res>;
  $Res call({DojinEvent dojinEvent, Price price});

  $DojinEventCopyWith<$Res> get dojinEvent;
}

/// @nodoc
class __$SoldAtDojinEventCopyWithImpl<$Res>
    extends _$BookStatusCopyWithImpl<$Res>
    implements _$SoldAtDojinEventCopyWith<$Res> {
  __$SoldAtDojinEventCopyWithImpl(
      _SoldAtDojinEvent _value, $Res Function(_SoldAtDojinEvent) _then)
      : super(_value, (v) => _then(v as _SoldAtDojinEvent));

  @override
  _SoldAtDojinEvent get _value => super._value as _SoldAtDojinEvent;

  @override
  $Res call({
    Object? dojinEvent = freezed,
    Object? price = freezed,
  }) {
    return _then(_SoldAtDojinEvent(
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

class _$_SoldAtDojinEvent extends _SoldAtDojinEvent {
  const _$_SoldAtDojinEvent({required this.dojinEvent, required this.price})
      : super._();

  @override
  final DojinEvent dojinEvent;
  @override
  final Price price;

  @override
  String toString() {
    return 'BookStatus.soldAtDojinEvent(dojinEvent: $dojinEvent, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SoldAtDojinEvent &&
            (identical(other.dojinEvent, dojinEvent) ||
                const DeepCollectionEquality()
                    .equals(other.dojinEvent, dojinEvent)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dojinEvent) ^
      const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$SoldAtDojinEventCopyWith<_SoldAtDojinEvent> get copyWith =>
      __$SoldAtDojinEventCopyWithImpl<_SoldAtDojinEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeStock,
    required TResult Function(Outsourcer outsourcer, OutsourcingPrice price)
        outsourcerStock,
    required TResult Function(String label) extraStock,
    required TResult Function(Outsourcer outsourcer, OutsourcingPrice price)
        soldByOutsourcer,
    required TResult Function(DojinEvent dojinEvent, Price price)
        soldAtDojinEvent,
    required TResult Function(DojinEvent dojinEvent) freeDistribution,
  }) {
    return soldAtDojinEvent(dojinEvent, price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeStock,
    TResult Function(Outsourcer outsourcer, OutsourcingPrice price)?
        outsourcerStock,
    TResult Function(String label)? extraStock,
    TResult Function(Outsourcer outsourcer, OutsourcingPrice price)?
        soldByOutsourcer,
    TResult Function(DojinEvent dojinEvent, Price price)? soldAtDojinEvent,
    TResult Function(DojinEvent dojinEvent)? freeDistribution,
    required TResult orElse(),
  }) {
    if (soldAtDojinEvent != null) {
      return soldAtDojinEvent(dojinEvent, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStock value) homeStock,
    required TResult Function(_OutsourcerStock value) outsourcerStock,
    required TResult Function(_ExtraStock value) extraStock,
    required TResult Function(_SoldByOutsourcer value) soldByOutsourcer,
    required TResult Function(_SoldAtDojinEvent value) soldAtDojinEvent,
    required TResult Function(_FreeDistribution value) freeDistribution,
  }) {
    return soldAtDojinEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStock value)? homeStock,
    TResult Function(_OutsourcerStock value)? outsourcerStock,
    TResult Function(_ExtraStock value)? extraStock,
    TResult Function(_SoldByOutsourcer value)? soldByOutsourcer,
    TResult Function(_SoldAtDojinEvent value)? soldAtDojinEvent,
    TResult Function(_FreeDistribution value)? freeDistribution,
    required TResult orElse(),
  }) {
    if (soldAtDojinEvent != null) {
      return soldAtDojinEvent(this);
    }
    return orElse();
  }
}

abstract class _SoldAtDojinEvent extends BookStatus {
  const factory _SoldAtDojinEvent(
      {required DojinEvent dojinEvent,
      required Price price}) = _$_SoldAtDojinEvent;
  const _SoldAtDojinEvent._() : super._();

  DojinEvent get dojinEvent => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SoldAtDojinEventCopyWith<_SoldAtDojinEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FreeDistributionCopyWith<$Res> {
  factory _$FreeDistributionCopyWith(
          _FreeDistribution value, $Res Function(_FreeDistribution) then) =
      __$FreeDistributionCopyWithImpl<$Res>;
  $Res call({DojinEvent dojinEvent});

  $DojinEventCopyWith<$Res> get dojinEvent;
}

/// @nodoc
class __$FreeDistributionCopyWithImpl<$Res>
    extends _$BookStatusCopyWithImpl<$Res>
    implements _$FreeDistributionCopyWith<$Res> {
  __$FreeDistributionCopyWithImpl(
      _FreeDistribution _value, $Res Function(_FreeDistribution) _then)
      : super(_value, (v) => _then(v as _FreeDistribution));

  @override
  _FreeDistribution get _value => super._value as _FreeDistribution;

  @override
  $Res call({
    Object? dojinEvent = freezed,
  }) {
    return _then(_FreeDistribution(
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

class _$_FreeDistribution extends _FreeDistribution {
  const _$_FreeDistribution({required this.dojinEvent}) : super._();

  @override
  final DojinEvent dojinEvent;

  @override
  String toString() {
    return 'BookStatus.freeDistribution(dojinEvent: $dojinEvent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FreeDistribution &&
            (identical(other.dojinEvent, dojinEvent) ||
                const DeepCollectionEquality()
                    .equals(other.dojinEvent, dojinEvent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dojinEvent);

  @JsonKey(ignore: true)
  @override
  _$FreeDistributionCopyWith<_FreeDistribution> get copyWith =>
      __$FreeDistributionCopyWithImpl<_FreeDistribution>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeStock,
    required TResult Function(Outsourcer outsourcer, OutsourcingPrice price)
        outsourcerStock,
    required TResult Function(String label) extraStock,
    required TResult Function(Outsourcer outsourcer, OutsourcingPrice price)
        soldByOutsourcer,
    required TResult Function(DojinEvent dojinEvent, Price price)
        soldAtDojinEvent,
    required TResult Function(DojinEvent dojinEvent) freeDistribution,
  }) {
    return freeDistribution(dojinEvent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeStock,
    TResult Function(Outsourcer outsourcer, OutsourcingPrice price)?
        outsourcerStock,
    TResult Function(String label)? extraStock,
    TResult Function(Outsourcer outsourcer, OutsourcingPrice price)?
        soldByOutsourcer,
    TResult Function(DojinEvent dojinEvent, Price price)? soldAtDojinEvent,
    TResult Function(DojinEvent dojinEvent)? freeDistribution,
    required TResult orElse(),
  }) {
    if (freeDistribution != null) {
      return freeDistribution(dojinEvent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStock value) homeStock,
    required TResult Function(_OutsourcerStock value) outsourcerStock,
    required TResult Function(_ExtraStock value) extraStock,
    required TResult Function(_SoldByOutsourcer value) soldByOutsourcer,
    required TResult Function(_SoldAtDojinEvent value) soldAtDojinEvent,
    required TResult Function(_FreeDistribution value) freeDistribution,
  }) {
    return freeDistribution(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStock value)? homeStock,
    TResult Function(_OutsourcerStock value)? outsourcerStock,
    TResult Function(_ExtraStock value)? extraStock,
    TResult Function(_SoldByOutsourcer value)? soldByOutsourcer,
    TResult Function(_SoldAtDojinEvent value)? soldAtDojinEvent,
    TResult Function(_FreeDistribution value)? freeDistribution,
    required TResult orElse(),
  }) {
    if (freeDistribution != null) {
      return freeDistribution(this);
    }
    return orElse();
  }
}

abstract class _FreeDistribution extends BookStatus {
  const factory _FreeDistribution({required DojinEvent dojinEvent}) =
      _$_FreeDistribution;
  const _FreeDistribution._() : super._();

  DojinEvent get dojinEvent => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FreeDistributionCopyWith<_FreeDistribution> get copyWith =>
      throw _privateConstructorUsedError;
}
