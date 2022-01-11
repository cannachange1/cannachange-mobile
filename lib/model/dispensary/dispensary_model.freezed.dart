// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dispensary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DispensaryModel _$DispensaryModelFromJson(Map<String, dynamic> json) {
  return _DispensaryModel.fromJson(json);
}

/// @nodoc
class _$DispensaryModelTearOff {
  const _$DispensaryModelTearOff();

  _DispensaryModel call(
      {required int organisationId,
      String? firstName,
      String? lastName,
      String? avatar,
      String? username}) {
    return _DispensaryModel(
      organisationId: organisationId,
      firstName: firstName,
      lastName: lastName,
      avatar: avatar,
      username: username,
    );
  }

  DispensaryModel fromJson(Map<String, Object> json) {
    return DispensaryModel.fromJson(json);
  }
}

/// @nodoc
const $DispensaryModel = _$DispensaryModelTearOff();

/// @nodoc
mixin _$DispensaryModel {
  int get organisationId => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DispensaryModelCopyWith<DispensaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DispensaryModelCopyWith<$Res> {
  factory $DispensaryModelCopyWith(
          DispensaryModel value, $Res Function(DispensaryModel) then) =
      _$DispensaryModelCopyWithImpl<$Res>;
  $Res call(
      {int organisationId,
      String? firstName,
      String? lastName,
      String? avatar,
      String? username});
}

/// @nodoc
class _$DispensaryModelCopyWithImpl<$Res>
    implements $DispensaryModelCopyWith<$Res> {
  _$DispensaryModelCopyWithImpl(this._value, this._then);

  final DispensaryModel _value;
  // ignore: unused_field
  final $Res Function(DispensaryModel) _then;

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
              as int,
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
abstract class _$DispensaryModelCopyWith<$Res>
    implements $DispensaryModelCopyWith<$Res> {
  factory _$DispensaryModelCopyWith(
          _DispensaryModel value, $Res Function(_DispensaryModel) then) =
      __$DispensaryModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int organisationId,
      String? firstName,
      String? lastName,
      String? avatar,
      String? username});
}

/// @nodoc
class __$DispensaryModelCopyWithImpl<$Res>
    extends _$DispensaryModelCopyWithImpl<$Res>
    implements _$DispensaryModelCopyWith<$Res> {
  __$DispensaryModelCopyWithImpl(
      _DispensaryModel _value, $Res Function(_DispensaryModel) _then)
      : super(_value, (v) => _then(v as _DispensaryModel));

  @override
  _DispensaryModel get _value => super._value as _DispensaryModel;

  @override
  $Res call({
    Object? organisationId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? avatar = freezed,
    Object? username = freezed,
  }) {
    return _then(_DispensaryModel(
      organisationId: organisationId == freezed
          ? _value.organisationId
          : organisationId // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_DispensaryModel implements _DispensaryModel {
  _$_DispensaryModel(
      {required this.organisationId,
      this.firstName,
      this.lastName,
      this.avatar,
      this.username});

  factory _$_DispensaryModel.fromJson(Map<String, dynamic> json) =>
      _$$_DispensaryModelFromJson(json);

  @override
  final int organisationId;
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
    return 'DispensaryModel(organisationId: $organisationId, firstName: $firstName, lastName: $lastName, avatar: $avatar, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DispensaryModel &&
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
  _$DispensaryModelCopyWith<_DispensaryModel> get copyWith =>
      __$DispensaryModelCopyWithImpl<_DispensaryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DispensaryModelToJson(this);
  }
}

abstract class _DispensaryModel implements DispensaryModel {
  factory _DispensaryModel(
      {required int organisationId,
      String? firstName,
      String? lastName,
      String? avatar,
      String? username}) = _$_DispensaryModel;

  factory _DispensaryModel.fromJson(Map<String, dynamic> json) =
      _$_DispensaryModel.fromJson;

  @override
  int get organisationId => throw _privateConstructorUsedError;
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
  _$DispensaryModelCopyWith<_DispensaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
