// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'aeropay_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AeroPayModel _$AeroPayModelFromJson(Map<String, dynamic> json) {
  return _AeroPayModel.fromJson(json);
}

/// @nodoc
class _$AeroPayModelTearOff {
  const _$AeroPayModelTearOff();

  _AeroPayModel call(
      {String? token, String? username, String? fastlinkURL, bool? success}) {
    return _AeroPayModel(
      token: token,
      username: username,
      fastlinkURL: fastlinkURL,
      success: success,
    );
  }

  AeroPayModel fromJson(Map<String, Object> json) {
    return AeroPayModel.fromJson(json);
  }
}

/// @nodoc
const $AeroPayModel = _$AeroPayModelTearOff();

/// @nodoc
mixin _$AeroPayModel {
  String? get token => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get fastlinkURL => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AeroPayModelCopyWith<AeroPayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AeroPayModelCopyWith<$Res> {
  factory $AeroPayModelCopyWith(
          AeroPayModel value, $Res Function(AeroPayModel) then) =
      _$AeroPayModelCopyWithImpl<$Res>;
  $Res call(
      {String? token, String? username, String? fastlinkURL, bool? success});
}

/// @nodoc
class _$AeroPayModelCopyWithImpl<$Res> implements $AeroPayModelCopyWith<$Res> {
  _$AeroPayModelCopyWithImpl(this._value, this._then);

  final AeroPayModel _value;
  // ignore: unused_field
  final $Res Function(AeroPayModel) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? username = freezed,
    Object? fastlinkURL = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fastlinkURL: fastlinkURL == freezed
          ? _value.fastlinkURL
          : fastlinkURL // ignore: cast_nullable_to_non_nullable
              as String?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$AeroPayModelCopyWith<$Res>
    implements $AeroPayModelCopyWith<$Res> {
  factory _$AeroPayModelCopyWith(
          _AeroPayModel value, $Res Function(_AeroPayModel) then) =
      __$AeroPayModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? token, String? username, String? fastlinkURL, bool? success});
}

/// @nodoc
class __$AeroPayModelCopyWithImpl<$Res> extends _$AeroPayModelCopyWithImpl<$Res>
    implements _$AeroPayModelCopyWith<$Res> {
  __$AeroPayModelCopyWithImpl(
      _AeroPayModel _value, $Res Function(_AeroPayModel) _then)
      : super(_value, (v) => _then(v as _AeroPayModel));

  @override
  _AeroPayModel get _value => super._value as _AeroPayModel;

  @override
  $Res call({
    Object? token = freezed,
    Object? username = freezed,
    Object? fastlinkURL = freezed,
    Object? success = freezed,
  }) {
    return _then(_AeroPayModel(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fastlinkURL: fastlinkURL == freezed
          ? _value.fastlinkURL
          : fastlinkURL // ignore: cast_nullable_to_non_nullable
              as String?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AeroPayModel implements _AeroPayModel {
  _$_AeroPayModel({this.token, this.username, this.fastlinkURL, this.success});

  factory _$_AeroPayModel.fromJson(Map<String, dynamic> json) =>
      _$$_AeroPayModelFromJson(json);

  @override
  final String? token;
  @override
  final String? username;
  @override
  final String? fastlinkURL;
  @override
  final bool? success;

  @override
  String toString() {
    return 'AeroPayModel(token: $token, username: $username, fastlinkURL: $fastlinkURL, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AeroPayModel &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.fastlinkURL, fastlinkURL) ||
                const DeepCollectionEquality()
                    .equals(other.fastlinkURL, fastlinkURL)) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(fastlinkURL) ^
      const DeepCollectionEquality().hash(success);

  @JsonKey(ignore: true)
  @override
  _$AeroPayModelCopyWith<_AeroPayModel> get copyWith =>
      __$AeroPayModelCopyWithImpl<_AeroPayModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AeroPayModelToJson(this);
  }
}

abstract class _AeroPayModel implements AeroPayModel {
  factory _AeroPayModel(
      {String? token,
      String? username,
      String? fastlinkURL,
      bool? success}) = _$_AeroPayModel;

  factory _AeroPayModel.fromJson(Map<String, dynamic> json) =
      _$_AeroPayModel.fromJson;

  @override
  String? get token => throw _privateConstructorUsedError;
  @override
  String? get username => throw _privateConstructorUsedError;
  @override
  String? get fastlinkURL => throw _privateConstructorUsedError;
  @override
  bool? get success => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AeroPayModelCopyWith<_AeroPayModel> get copyWith =>
      throw _privateConstructorUsedError;
}
