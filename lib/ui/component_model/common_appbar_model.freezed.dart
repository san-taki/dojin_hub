// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'common_appbar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommonAppBarModelTearOff {
  const _$CommonAppBarModelTearOff();

  _CommonAppBarModel call({bool isEditing = false}) {
    return _CommonAppBarModel(
      isEditing: isEditing,
    );
  }
}

/// @nodoc
const $CommonAppBarModel = _$CommonAppBarModelTearOff();

/// @nodoc
mixin _$CommonAppBarModel {
  bool get isEditing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommonAppBarModelCopyWith<CommonAppBarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonAppBarModelCopyWith<$Res> {
  factory $CommonAppBarModelCopyWith(
          CommonAppBarModel value, $Res Function(CommonAppBarModel) then) =
      _$CommonAppBarModelCopyWithImpl<$Res>;
  $Res call({bool isEditing});
}

/// @nodoc
class _$CommonAppBarModelCopyWithImpl<$Res>
    implements $CommonAppBarModelCopyWith<$Res> {
  _$CommonAppBarModelCopyWithImpl(this._value, this._then);

  final CommonAppBarModel _value;
  // ignore: unused_field
  final $Res Function(CommonAppBarModel) _then;

  @override
  $Res call({
    Object? isEditing = freezed,
  }) {
    return _then(_value.copyWith(
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CommonAppBarModelCopyWith<$Res>
    implements $CommonAppBarModelCopyWith<$Res> {
  factory _$CommonAppBarModelCopyWith(
          _CommonAppBarModel value, $Res Function(_CommonAppBarModel) then) =
      __$CommonAppBarModelCopyWithImpl<$Res>;
  @override
  $Res call({bool isEditing});
}

/// @nodoc
class __$CommonAppBarModelCopyWithImpl<$Res>
    extends _$CommonAppBarModelCopyWithImpl<$Res>
    implements _$CommonAppBarModelCopyWith<$Res> {
  __$CommonAppBarModelCopyWithImpl(
      _CommonAppBarModel _value, $Res Function(_CommonAppBarModel) _then)
      : super(_value, (v) => _then(v as _CommonAppBarModel));

  @override
  _CommonAppBarModel get _value => super._value as _CommonAppBarModel;

  @override
  $Res call({
    Object? isEditing = freezed,
  }) {
    return _then(_CommonAppBarModel(
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CommonAppBarModel implements _CommonAppBarModel {
  const _$_CommonAppBarModel({this.isEditing = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isEditing;

  @override
  String toString() {
    return 'CommonAppBarModel(isEditing: $isEditing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommonAppBarModel &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isEditing);

  @JsonKey(ignore: true)
  @override
  _$CommonAppBarModelCopyWith<_CommonAppBarModel> get copyWith =>
      __$CommonAppBarModelCopyWithImpl<_CommonAppBarModel>(this, _$identity);
}

abstract class _CommonAppBarModel implements CommonAppBarModel {
  const factory _CommonAppBarModel({bool isEditing}) = _$_CommonAppBarModel;

  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommonAppBarModelCopyWith<_CommonAppBarModel> get copyWith =>
      throw _privateConstructorUsedError;
}
