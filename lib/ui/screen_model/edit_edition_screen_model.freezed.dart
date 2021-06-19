// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'edit_edition_screen_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditEditionScreenModelTearOff {
  const _$EditEditionScreenModelTearOff();

  _EditEditionScreenModel call(
      {required String productId,
      required Edition edition,
      required ProductStoreController productStoreController}) {
    return _EditEditionScreenModel(
      productId: productId,
      edition: edition,
      productStoreController: productStoreController,
    );
  }
}

/// @nodoc
const $EditEditionScreenModel = _$EditEditionScreenModelTearOff();

/// @nodoc
mixin _$EditEditionScreenModel {
  String get productId => throw _privateConstructorUsedError;
  Edition get edition => throw _privateConstructorUsedError;
  ProductStoreController get productStoreController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditEditionScreenModelCopyWith<EditEditionScreenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditEditionScreenModelCopyWith<$Res> {
  factory $EditEditionScreenModelCopyWith(EditEditionScreenModel value,
          $Res Function(EditEditionScreenModel) then) =
      _$EditEditionScreenModelCopyWithImpl<$Res>;
  $Res call(
      {String productId,
      Edition edition,
      ProductStoreController productStoreController});

  $EditionCopyWith<$Res> get edition;
}

/// @nodoc
class _$EditEditionScreenModelCopyWithImpl<$Res>
    implements $EditEditionScreenModelCopyWith<$Res> {
  _$EditEditionScreenModelCopyWithImpl(this._value, this._then);

  final EditEditionScreenModel _value;
  // ignore: unused_field
  final $Res Function(EditEditionScreenModel) _then;

  @override
  $Res call({
    Object? productId = freezed,
    Object? edition = freezed,
    Object? productStoreController = freezed,
  }) {
    return _then(_value.copyWith(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      edition: edition == freezed
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as Edition,
      productStoreController: productStoreController == freezed
          ? _value.productStoreController
          : productStoreController // ignore: cast_nullable_to_non_nullable
              as ProductStoreController,
    ));
  }

  @override
  $EditionCopyWith<$Res> get edition {
    return $EditionCopyWith<$Res>(_value.edition, (value) {
      return _then(_value.copyWith(edition: value));
    });
  }
}

/// @nodoc
abstract class _$EditEditionScreenModelCopyWith<$Res>
    implements $EditEditionScreenModelCopyWith<$Res> {
  factory _$EditEditionScreenModelCopyWith(_EditEditionScreenModel value,
          $Res Function(_EditEditionScreenModel) then) =
      __$EditEditionScreenModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String productId,
      Edition edition,
      ProductStoreController productStoreController});

  @override
  $EditionCopyWith<$Res> get edition;
}

/// @nodoc
class __$EditEditionScreenModelCopyWithImpl<$Res>
    extends _$EditEditionScreenModelCopyWithImpl<$Res>
    implements _$EditEditionScreenModelCopyWith<$Res> {
  __$EditEditionScreenModelCopyWithImpl(_EditEditionScreenModel _value,
      $Res Function(_EditEditionScreenModel) _then)
      : super(_value, (v) => _then(v as _EditEditionScreenModel));

  @override
  _EditEditionScreenModel get _value => super._value as _EditEditionScreenModel;

  @override
  $Res call({
    Object? productId = freezed,
    Object? edition = freezed,
    Object? productStoreController = freezed,
  }) {
    return _then(_EditEditionScreenModel(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      edition: edition == freezed
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as Edition,
      productStoreController: productStoreController == freezed
          ? _value.productStoreController
          : productStoreController // ignore: cast_nullable_to_non_nullable
              as ProductStoreController,
    ));
  }
}

/// @nodoc

class _$_EditEditionScreenModel implements _EditEditionScreenModel {
  const _$_EditEditionScreenModel(
      {required this.productId,
      required this.edition,
      required this.productStoreController});

  @override
  final String productId;
  @override
  final Edition edition;
  @override
  final ProductStoreController productStoreController;

  @override
  String toString() {
    return 'EditEditionScreenModel(productId: $productId, edition: $edition, productStoreController: $productStoreController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditEditionScreenModel &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.edition, edition) ||
                const DeepCollectionEquality()
                    .equals(other.edition, edition)) &&
            (identical(other.productStoreController, productStoreController) ||
                const DeepCollectionEquality().equals(
                    other.productStoreController, productStoreController)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(edition) ^
      const DeepCollectionEquality().hash(productStoreController);

  @JsonKey(ignore: true)
  @override
  _$EditEditionScreenModelCopyWith<_EditEditionScreenModel> get copyWith =>
      __$EditEditionScreenModelCopyWithImpl<_EditEditionScreenModel>(
          this, _$identity);
}

abstract class _EditEditionScreenModel implements EditEditionScreenModel {
  const factory _EditEditionScreenModel(
          {required String productId,
          required Edition edition,
          required ProductStoreController productStoreController}) =
      _$_EditEditionScreenModel;

  @override
  String get productId => throw _privateConstructorUsedError;
  @override
  Edition get edition => throw _privateConstructorUsedError;
  @override
  ProductStoreController get productStoreController =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EditEditionScreenModelCopyWith<_EditEditionScreenModel> get copyWith =>
      throw _privateConstructorUsedError;
}
