// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'client_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientModel _$ClientModelFromJson(Map<String, dynamic> json) {
  return _ClientModel.fromJson(json);
}

/// @nodoc
class _$ClientModelTearOff {
  const _$ClientModelTearOff();

  _ClientModel call(
      {String? organisationId,
      String? firstName,
      String? lastName,
      String? avatar,
      String? username}) {
    return _ClientModel(
      organisationId: organisationId,
      firstName: firstName,
      lastName: lastName,
      avatar: avatar,
      username: username,
    );
  }

  ClientModel fromJson(Map<String, Object> json) {
    return ClientModel.fromJson(json);
  }
}

/// @nodoc
const $ClientModel = _$ClientModelTearOff();

/// @nodoc
mixin _$ClientModel {
  String? get organisationId => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientModelCopyWith<ClientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientModelCopyWith<$Res> {
  factory $ClientModelCopyWith(
          ClientModel value, $Res Function(ClientModel) then) =
      _$ClientModelCopyWithImpl<$Res>;
  $Res call(
      {String? organisationId,
      String? firstName,
      String? lastName,
      String? avatar,
      String? username});
}

/// @nodoc
class _$ClientModelCopyWithImpl<$Res> implements $ClientModelCopyWith<$Res> {
  _$ClientModelCopyWithImpl(this._value, this._then);

  final ClientModel _value;
  // ignore: unused_field
  final $Res Function(ClientModel) _then;

  @override
  $Res call({
    Object? organisationId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? avatar = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      organisationId: organisationId == freezed
          ? _value.organisationId
          : organisationId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ClientModelCopyWith<$Res>
    implements $ClientModelCopyWith<$Res> {
  factory _$ClientModelCopyWith(
          _ClientModel value, $Res Function(_ClientModel) then) =
      __$ClientModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? organisationId,
      String? firstName,
      String? lastName,
      String? avatar,
      String? username});
}

/// @nodoc
class __$ClientModelCopyWithImpl<$Res> extends _$ClientModelCopyWithImpl<$Res>
    implements _$ClientModelCopyWith<$Res> {
  __$ClientModelCopyWithImpl(
      _ClientModel _value, $Res Function(_ClientModel) _then)
      : super(_value, (v) => _then(v as _ClientModel));

  @override
  _ClientModel get _value => super._value as _ClientModel;

  @override
  $Res call({
    Object? organisationId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? avatar = freezed,
    Object? username = freezed,
  }) {
    return _then(_ClientModel(
      organisationId: organisationId == freezed
          ? _value.organisationId
          : organisationId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClientModel implements _ClientModel {
  _$_ClientModel(
      {this.organisationId,
      this.firstName,
      this.lastName,
      this.avatar,
      this.username});

  factory _$_ClientModel.fromJson(Map<String, dynamic> json) =>
      _$$_ClientModelFromJson(json);

  @override
  final String? organisationId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? avatar;
  @override
  final String? username;

  @override
  String toString() {
    return 'ClientModel(organisationId: $organisationId, firstName: $firstName, lastName: $lastName, avatar: $avatar, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ClientModel &&
            (identical(other.organisationId, organisationId) ||
                const DeepCollectionEquality()
                    .equals(other.organisationId, organisationId)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(organisationId) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$ClientModelCopyWith<_ClientModel> get copyWith =>
      __$ClientModelCopyWithImpl<_ClientModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientModelToJson(this);
  }
}

abstract class _ClientModel implements ClientModel {
  factory _ClientModel(
      {String? organisationId,
      String? firstName,
      String? lastName,
      String? avatar,
      String? username}) = _$_ClientModel;

  factory _ClientModel.fromJson(Map<String, dynamic> json) =
      _$_ClientModel.fromJson;

  @override
  String? get organisationId => throw _privateConstructorUsedError;
  @override
  String? get firstName => throw _privateConstructorUsedError;
  @override
  String? get lastName => throw _privateConstructorUsedError;
  @override
  String? get avatar => throw _privateConstructorUsedError;
  @override
  String? get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ClientModelCopyWith<_ClientModel> get copyWith =>
      throw _privateConstructorUsedError;
}
