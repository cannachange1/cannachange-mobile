// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'license_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LicenseModel _$LicenseModelFromJson(Map<String, dynamic> json) {
  return _LicenseModel.fromJson(json);
}

/// @nodoc
class _$LicenseModelTearOff {
  const _$LicenseModelTearOff();

  _LicenseModel call(
      {String? organisationId,
      String? firstName,
      String? lastName,
      String? avatar,
      String? username,
      List<LicenseModel>? licenses}) {
    return _LicenseModel(
      organisationId: organisationId,
      firstName: firstName,
      lastName: lastName,
      avatar: avatar,
      username: username,
      licenses: licenses,
    );
  }

  LicenseModel fromJson(Map<String, Object> json) {
    return LicenseModel.fromJson(json);
  }
}

/// @nodoc
const $LicenseModel = _$LicenseModelTearOff();

/// @nodoc
mixin _$LicenseModel {
  String? get organisationId => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  List<LicenseModel>? get licenses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LicenseModelCopyWith<LicenseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LicenseModelCopyWith<$Res> {
  factory $LicenseModelCopyWith(
          LicenseModel value, $Res Function(LicenseModel) then) =
      _$LicenseModelCopyWithImpl<$Res>;
  $Res call(
      {String? organisationId,
      String? firstName,
      String? lastName,
      String? avatar,
      String? username,
      List<LicenseModel>? licenses});
}

/// @nodoc
class _$LicenseModelCopyWithImpl<$Res> implements $LicenseModelCopyWith<$Res> {
  _$LicenseModelCopyWithImpl(this._value, this._then);

  final LicenseModel _value;
  // ignore: unused_field
  final $Res Function(LicenseModel) _then;

  @override
  $Res call({
    Object? organisationId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? avatar = freezed,
    Object? username = freezed,
    Object? licenses = freezed,
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
      licenses: licenses == freezed
          ? _value.licenses
          : licenses // ignore: cast_nullable_to_non_nullable
              as List<LicenseModel>?,
    ));
  }
}

/// @nodoc
abstract class _$LicenseModelCopyWith<$Res>
    implements $LicenseModelCopyWith<$Res> {
  factory _$LicenseModelCopyWith(
          _LicenseModel value, $Res Function(_LicenseModel) then) =
      __$LicenseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? organisationId,
      String? firstName,
      String? lastName,
      String? avatar,
      String? username,
      List<LicenseModel>? licenses});
}

/// @nodoc
class __$LicenseModelCopyWithImpl<$Res> extends _$LicenseModelCopyWithImpl<$Res>
    implements _$LicenseModelCopyWith<$Res> {
  __$LicenseModelCopyWithImpl(
      _LicenseModel _value, $Res Function(_LicenseModel) _then)
      : super(_value, (v) => _then(v as _LicenseModel));

  @override
  _LicenseModel get _value => super._value as _LicenseModel;

  @override
  $Res call({
    Object? organisationId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? avatar = freezed,
    Object? username = freezed,
    Object? licenses = freezed,
  }) {
    return _then(_LicenseModel(
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
      licenses: licenses == freezed
          ? _value.licenses
          : licenses // ignore: cast_nullable_to_non_nullable
              as List<LicenseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LicenseModel implements _LicenseModel {
  _$_LicenseModel(
      {this.organisationId,
      this.firstName,
      this.lastName,
      this.avatar,
      this.username,
      this.licenses});

  factory _$_LicenseModel.fromJson(Map<String, dynamic> json) =>
      _$$_LicenseModelFromJson(json);

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
  final List<LicenseModel>? licenses;

  @override
  String toString() {
    return 'LicenseModel(organisationId: $organisationId, firstName: $firstName, lastName: $lastName, avatar: $avatar, username: $username, licenses: $licenses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LicenseModel &&
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
                    .equals(other.username, username)) &&
            (identical(other.licenses, licenses) ||
                const DeepCollectionEquality()
                    .equals(other.licenses, licenses)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(organisationId) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(licenses);

  @JsonKey(ignore: true)
  @override
  _$LicenseModelCopyWith<_LicenseModel> get copyWith =>
      __$LicenseModelCopyWithImpl<_LicenseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LicenseModelToJson(this);
  }
}

abstract class _LicenseModel implements LicenseModel {
  factory _LicenseModel(
      {String? organisationId,
      String? firstName,
      String? lastName,
      String? avatar,
      String? username,
      List<LicenseModel>? licenses}) = _$_LicenseModel;

  factory _LicenseModel.fromJson(Map<String, dynamic> json) =
      _$_LicenseModel.fromJson;

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
  List<LicenseModel>? get licenses => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LicenseModelCopyWith<_LicenseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
