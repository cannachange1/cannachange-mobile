// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignUpRequestModel _$SignUpRequestModelFromJson(Map<String, dynamic> json) {
  return _SignUpRequestModel.fromJson(json);
}

/// @nodoc
class _$SignUpRequestModelTearOff {
  const _$SignUpRequestModelTearOff();

  _SignUpRequestModel call({required UserModel user}) {
    return _SignUpRequestModel(
      user: user,
    );
  }

  SignUpRequestModel fromJson(Map<String, Object> json) {
    return SignUpRequestModel.fromJson(json);
  }
}

/// @nodoc
const $SignUpRequestModel = _$SignUpRequestModelTearOff();

/// @nodoc
mixin _$SignUpRequestModel {
  UserModel get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpRequestModelCopyWith<SignUpRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpRequestModelCopyWith<$Res> {
  factory $SignUpRequestModelCopyWith(
          SignUpRequestModel value, $Res Function(SignUpRequestModel) then) =
      _$SignUpRequestModelCopyWithImpl<$Res>;
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$SignUpRequestModelCopyWithImpl<$Res>
    implements $SignUpRequestModelCopyWith<$Res> {
  _$SignUpRequestModelCopyWithImpl(this._value, this._then);

  final SignUpRequestModel _value;
  // ignore: unused_field
  final $Res Function(SignUpRequestModel) _then;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$SignUpRequestModelCopyWith<$Res>
    implements $SignUpRequestModelCopyWith<$Res> {
  factory _$SignUpRequestModelCopyWith(
          _SignUpRequestModel value, $Res Function(_SignUpRequestModel) then) =
      __$SignUpRequestModelCopyWithImpl<$Res>;
  @override
  $Res call({UserModel user});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$SignUpRequestModelCopyWithImpl<$Res>
    extends _$SignUpRequestModelCopyWithImpl<$Res>
    implements _$SignUpRequestModelCopyWith<$Res> {
  __$SignUpRequestModelCopyWithImpl(
      _SignUpRequestModel _value, $Res Function(_SignUpRequestModel) _then)
      : super(_value, (v) => _then(v as _SignUpRequestModel));

  @override
  _SignUpRequestModel get _value => super._value as _SignUpRequestModel;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_SignUpRequestModel(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignUpRequestModel implements _SignUpRequestModel {
  _$_SignUpRequestModel({required this.user});

  factory _$_SignUpRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_SignUpRequestModelFromJson(json);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'SignUpRequestModel(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpRequestModel &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$SignUpRequestModelCopyWith<_SignUpRequestModel> get copyWith =>
      __$SignUpRequestModelCopyWithImpl<_SignUpRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignUpRequestModelToJson(this);
  }
}

abstract class _SignUpRequestModel implements SignUpRequestModel {
  factory _SignUpRequestModel({required UserModel user}) =
      _$_SignUpRequestModel;

  factory _SignUpRequestModel.fromJson(Map<String, dynamic> json) =
      _$_SignUpRequestModel.fromJson;

  @override
  UserModel get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignUpRequestModelCopyWith<_SignUpRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
