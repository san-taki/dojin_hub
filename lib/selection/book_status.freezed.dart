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

  _OutsourcerStock outsourcerStock({required Outsourcer outsourcer}) {
    return _OutsourcerStock(
      outsourcer: outsourcer,
    );
  }

  _ExtraStock extraStock({required String label}) {
    return _ExtraStock(
      label: label,
    );
  }

  _SoldByOutsourcer soldByOutsourcer({required Outsourcer outsourcer}) {
    return _SoldByOutsourcer(
      outsourcer: outsourcer,
    );
  }

  _SoldAtDojinEvent soldAtDojinEvent({required DojinEvent dojinEvent}) {
    return _SoldAtDojinEvent(
      dojinEvent: dojinEvent,
    );
  }

  _FreeDistribution freeDistribution(
      {required DojinEvent dojinEvent, required Parson parson}) {
    return _FreeDistribution(
      dojinEvent: dojinEvent,
      parson: parson,
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
    required TResult Function(Outsourcer outsourcer) outsourcerStock,
    required TResult Function(String label) extraStock,
    required TResult Function(Outsourcer outsourcer) soldByOutsourcer,
    required TResult Function(DojinEvent dojinEvent) soldAtDojinEvent,
    required TResult Function(DojinEvent dojinEvent, Parson parson)
        freeDistribution,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeStock,
    TResult Function(Outsourcer outsourcer)? outsourcerStock,
    TResult Function(String label)? extraStock,
    TResult Function(Outsourcer outsourcer)? soldByOutsourcer,
    TResult Function(DojinEvent dojinEvent)? soldAtDojinEvent,
    TResult Function(DojinEvent dojinEvent, Parson parson)? freeDistribution,
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

class _$_HomeStock implements _HomeStock {
  const _$_HomeStock();

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
    required TResult Function(Outsourcer outsourcer) outsourcerStock,
    required TResult Function(String label) extraStock,
    required TResult Function(Outsourcer outsourcer) soldByOutsourcer,
    required TResult Function(DojinEvent dojinEvent) soldAtDojinEvent,
    required TResult Function(DojinEvent dojinEvent, Parson parson)
        freeDistribution,
  }) {
    return homeStock();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeStock,
    TResult Function(Outsourcer outsourcer)? outsourcerStock,
    TResult Function(String label)? extraStock,
    TResult Function(Outsourcer outsourcer)? soldByOutsourcer,
    TResult Function(DojinEvent dojinEvent)? soldAtDojinEvent,
    TResult Function(DojinEvent dojinEvent, Parson parson)? freeDistribution,
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

abstract class _HomeStock implements BookStatus {
  const factory _HomeStock() = _$_HomeStock;
}

/// @nodoc
abstract class _$OutsourcerStockCopyWith<$Res> {
  factory _$OutsourcerStockCopyWith(
          _OutsourcerStock value, $Res Function(_OutsourcerStock) then) =
      __$OutsourcerStockCopyWithImpl<$Res>;
  $Res call({Outsourcer outsourcer});
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
  }) {
    return _then(_OutsourcerStock(
      outsourcer: outsourcer == freezed
          ? _value.outsourcer
          : outsourcer // ignore: cast_nullable_to_non_nullable
              as Outsourcer,
    ));
  }
}

/// @nodoc

class _$_OutsourcerStock implements _OutsourcerStock {
  const _$_OutsourcerStock({required this.outsourcer});

  @override
  final Outsourcer outsourcer;

  @override
  String toString() {
    return 'BookStatus.outsourcerStock(outsourcer: $outsourcer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutsourcerStock &&
            (identical(other.outsourcer, outsourcer) ||
                const DeepCollectionEquality()
                    .equals(other.outsourcer, outsourcer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(outsourcer);

  @JsonKey(ignore: true)
  @override
  _$OutsourcerStockCopyWith<_OutsourcerStock> get copyWith =>
      __$OutsourcerStockCopyWithImpl<_OutsourcerStock>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeStock,
    required TResult Function(Outsourcer outsourcer) outsourcerStock,
    required TResult Function(String label) extraStock,
    required TResult Function(Outsourcer outsourcer) soldByOutsourcer,
    required TResult Function(DojinEvent dojinEvent) soldAtDojinEvent,
    required TResult Function(DojinEvent dojinEvent, Parson parson)
        freeDistribution,
  }) {
    return outsourcerStock(outsourcer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeStock,
    TResult Function(Outsourcer outsourcer)? outsourcerStock,
    TResult Function(String label)? extraStock,
    TResult Function(Outsourcer outsourcer)? soldByOutsourcer,
    TResult Function(DojinEvent dojinEvent)? soldAtDojinEvent,
    TResult Function(DojinEvent dojinEvent, Parson parson)? freeDistribution,
    required TResult orElse(),
  }) {
    if (outsourcerStock != null) {
      return outsourcerStock(outsourcer);
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

abstract class _OutsourcerStock implements BookStatus {
  const factory _OutsourcerStock({required Outsourcer outsourcer}) =
      _$_OutsourcerStock;

  Outsourcer get outsourcer => throw _privateConstructorUsedError;
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

class _$_ExtraStock implements _ExtraStock {
  const _$_ExtraStock({required this.label});

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
    required TResult Function(Outsourcer outsourcer) outsourcerStock,
    required TResult Function(String label) extraStock,
    required TResult Function(Outsourcer outsourcer) soldByOutsourcer,
    required TResult Function(DojinEvent dojinEvent) soldAtDojinEvent,
    required TResult Function(DojinEvent dojinEvent, Parson parson)
        freeDistribution,
  }) {
    return extraStock(label);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeStock,
    TResult Function(Outsourcer outsourcer)? outsourcerStock,
    TResult Function(String label)? extraStock,
    TResult Function(Outsourcer outsourcer)? soldByOutsourcer,
    TResult Function(DojinEvent dojinEvent)? soldAtDojinEvent,
    TResult Function(DojinEvent dojinEvent, Parson parson)? freeDistribution,
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

abstract class _ExtraStock implements BookStatus {
  const factory _ExtraStock({required String label}) = _$_ExtraStock;

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
  $Res call({Outsourcer outsourcer});
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
  }) {
    return _then(_SoldByOutsourcer(
      outsourcer: outsourcer == freezed
          ? _value.outsourcer
          : outsourcer // ignore: cast_nullable_to_non_nullable
              as Outsourcer,
    ));
  }
}

/// @nodoc

class _$_SoldByOutsourcer implements _SoldByOutsourcer {
  const _$_SoldByOutsourcer({required this.outsourcer});

  @override
  final Outsourcer outsourcer;

  @override
  String toString() {
    return 'BookStatus.soldByOutsourcer(outsourcer: $outsourcer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SoldByOutsourcer &&
            (identical(other.outsourcer, outsourcer) ||
                const DeepCollectionEquality()
                    .equals(other.outsourcer, outsourcer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(outsourcer);

  @JsonKey(ignore: true)
  @override
  _$SoldByOutsourcerCopyWith<_SoldByOutsourcer> get copyWith =>
      __$SoldByOutsourcerCopyWithImpl<_SoldByOutsourcer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeStock,
    required TResult Function(Outsourcer outsourcer) outsourcerStock,
    required TResult Function(String label) extraStock,
    required TResult Function(Outsourcer outsourcer) soldByOutsourcer,
    required TResult Function(DojinEvent dojinEvent) soldAtDojinEvent,
    required TResult Function(DojinEvent dojinEvent, Parson parson)
        freeDistribution,
  }) {
    return soldByOutsourcer(outsourcer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeStock,
    TResult Function(Outsourcer outsourcer)? outsourcerStock,
    TResult Function(String label)? extraStock,
    TResult Function(Outsourcer outsourcer)? soldByOutsourcer,
    TResult Function(DojinEvent dojinEvent)? soldAtDojinEvent,
    TResult Function(DojinEvent dojinEvent, Parson parson)? freeDistribution,
    required TResult orElse(),
  }) {
    if (soldByOutsourcer != null) {
      return soldByOutsourcer(outsourcer);
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

abstract class _SoldByOutsourcer implements BookStatus {
  const factory _SoldByOutsourcer({required Outsourcer outsourcer}) =
      _$_SoldByOutsourcer;

  Outsourcer get outsourcer => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SoldByOutsourcerCopyWith<_SoldByOutsourcer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SoldAtDojinEventCopyWith<$Res> {
  factory _$SoldAtDojinEventCopyWith(
          _SoldAtDojinEvent value, $Res Function(_SoldAtDojinEvent) then) =
      __$SoldAtDojinEventCopyWithImpl<$Res>;
  $Res call({DojinEvent dojinEvent});
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
  }) {
    return _then(_SoldAtDojinEvent(
      dojinEvent: dojinEvent == freezed
          ? _value.dojinEvent
          : dojinEvent // ignore: cast_nullable_to_non_nullable
              as DojinEvent,
    ));
  }
}

/// @nodoc

class _$_SoldAtDojinEvent implements _SoldAtDojinEvent {
  const _$_SoldAtDojinEvent({required this.dojinEvent});

  @override
  final DojinEvent dojinEvent;

  @override
  String toString() {
    return 'BookStatus.soldAtDojinEvent(dojinEvent: $dojinEvent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SoldAtDojinEvent &&
            (identical(other.dojinEvent, dojinEvent) ||
                const DeepCollectionEquality()
                    .equals(other.dojinEvent, dojinEvent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dojinEvent);

  @JsonKey(ignore: true)
  @override
  _$SoldAtDojinEventCopyWith<_SoldAtDojinEvent> get copyWith =>
      __$SoldAtDojinEventCopyWithImpl<_SoldAtDojinEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeStock,
    required TResult Function(Outsourcer outsourcer) outsourcerStock,
    required TResult Function(String label) extraStock,
    required TResult Function(Outsourcer outsourcer) soldByOutsourcer,
    required TResult Function(DojinEvent dojinEvent) soldAtDojinEvent,
    required TResult Function(DojinEvent dojinEvent, Parson parson)
        freeDistribution,
  }) {
    return soldAtDojinEvent(dojinEvent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeStock,
    TResult Function(Outsourcer outsourcer)? outsourcerStock,
    TResult Function(String label)? extraStock,
    TResult Function(Outsourcer outsourcer)? soldByOutsourcer,
    TResult Function(DojinEvent dojinEvent)? soldAtDojinEvent,
    TResult Function(DojinEvent dojinEvent, Parson parson)? freeDistribution,
    required TResult orElse(),
  }) {
    if (soldAtDojinEvent != null) {
      return soldAtDojinEvent(dojinEvent);
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

abstract class _SoldAtDojinEvent implements BookStatus {
  const factory _SoldAtDojinEvent({required DojinEvent dojinEvent}) =
      _$_SoldAtDojinEvent;

  DojinEvent get dojinEvent => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SoldAtDojinEventCopyWith<_SoldAtDojinEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FreeDistributionCopyWith<$Res> {
  factory _$FreeDistributionCopyWith(
          _FreeDistribution value, $Res Function(_FreeDistribution) then) =
      __$FreeDistributionCopyWithImpl<$Res>;
  $Res call({DojinEvent dojinEvent, Parson parson});
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
    Object? parson = freezed,
  }) {
    return _then(_FreeDistribution(
      dojinEvent: dojinEvent == freezed
          ? _value.dojinEvent
          : dojinEvent // ignore: cast_nullable_to_non_nullable
              as DojinEvent,
      parson: parson == freezed
          ? _value.parson
          : parson // ignore: cast_nullable_to_non_nullable
              as Parson,
    ));
  }
}

/// @nodoc

class _$_FreeDistribution implements _FreeDistribution {
  const _$_FreeDistribution({required this.dojinEvent, required this.parson});

  @override
  final DojinEvent dojinEvent;
  @override
  final Parson parson;

  @override
  String toString() {
    return 'BookStatus.freeDistribution(dojinEvent: $dojinEvent, parson: $parson)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FreeDistribution &&
            (identical(other.dojinEvent, dojinEvent) ||
                const DeepCollectionEquality()
                    .equals(other.dojinEvent, dojinEvent)) &&
            (identical(other.parson, parson) ||
                const DeepCollectionEquality().equals(other.parson, parson)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dojinEvent) ^
      const DeepCollectionEquality().hash(parson);

  @JsonKey(ignore: true)
  @override
  _$FreeDistributionCopyWith<_FreeDistribution> get copyWith =>
      __$FreeDistributionCopyWithImpl<_FreeDistribution>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeStock,
    required TResult Function(Outsourcer outsourcer) outsourcerStock,
    required TResult Function(String label) extraStock,
    required TResult Function(Outsourcer outsourcer) soldByOutsourcer,
    required TResult Function(DojinEvent dojinEvent) soldAtDojinEvent,
    required TResult Function(DojinEvent dojinEvent, Parson parson)
        freeDistribution,
  }) {
    return freeDistribution(dojinEvent, parson);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeStock,
    TResult Function(Outsourcer outsourcer)? outsourcerStock,
    TResult Function(String label)? extraStock,
    TResult Function(Outsourcer outsourcer)? soldByOutsourcer,
    TResult Function(DojinEvent dojinEvent)? soldAtDojinEvent,
    TResult Function(DojinEvent dojinEvent, Parson parson)? freeDistribution,
    required TResult orElse(),
  }) {
    if (freeDistribution != null) {
      return freeDistribution(dojinEvent, parson);
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

abstract class _FreeDistribution implements BookStatus {
  const factory _FreeDistribution(
      {required DojinEvent dojinEvent,
      required Parson parson}) = _$_FreeDistribution;

  DojinEvent get dojinEvent => throw _privateConstructorUsedError;
  Parson get parson => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FreeDistributionCopyWith<_FreeDistribution> get copyWith =>
      throw _privateConstructorUsedError;
}
