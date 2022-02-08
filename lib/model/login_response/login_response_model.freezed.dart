// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) {
  return _LoginResponseModel.fromJson(json);
}

/// @nodoc
class _$LoginResponseModelTearOff {
  const _$LoginResponseModelTearOff();

  _LoginResponseModel call(
      {required String token,
      String? role,
      DispensaryModel? dispensary,
      ClientModel? consumer,
      AeroPayModel? aeropay,
      MemberResponseModel? member,
      List<PointModel>? points}) {
    return _LoginResponseModel(
      token: token,
      role: role,
      dispensary: dispensary,
      consumer: consumer,
      aeropay: aeropay,
      member: member,
      points: points,
    );
  }

  LoginResponseModel fromJson(Map<String, Object> json) {
    return LoginResponseModel.fromJson(json);
  }
}

/// @nodoc
const $LoginResponseModel = _$LoginResponseModelTearOff();

/// @nodoc
mixin _$LoginResponseModel {
  String get token => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  DispensaryModel? get dispensary => throw _privateConstructorUsedError;
  ClientModel? get consumer => throw _privateConstructorUsedError;
  AeroPayModel? get aeropay => throw _privateConstructorUsedError;
  MemberResponseModel? get member => throw _privateConstructorUsedError;
  List<PointModel>? get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseModelCopyWith<LoginResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseModelCopyWith<$Res> {
  factory $LoginResponseModelCopyWith(
          LoginResponseModel value, $Res Function(LoginResponseModel) then) =
      _$LoginResponseModelCopyWithImpl<$Res>;
  $Res call(
      {String token,
      String? role,
      DispensaryModel? dispensary,
      ClientModel? consumer,
      AeroPayModel? aeropay,
      MemberResponseModel? member,
      List<PointModel>? points});

  $DispensaryModelCopyWith<$Res>? get dispensary;
  $ClientModelCopyWith<$Res>? get consumer;
  $AeroPayModelCopyWith<$Res>? get aeropay;
  $MemberResponseModelCopyWith<$Res>? get member;
}

/// @nodoc
class _$LoginResponseModelCopyWithImpl<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  _$LoginResponseModelCopyWithImpl(this._value, this._then);

  final LoginResponseModel _value;
  // ignore: unused_field
  final $Res Function(LoginResponseModel) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? role = freezed,
    Object? dispensary = freezed,
    Object? consumer = freezed,
    Object? aeropay = freezed,
    Object? member = freezed,
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      dispensary: dispensary == freezed
          ? _value.dispensary
          : dispensary // ignore: cast_nullable_to_non_nullable
              as DispensaryModel?,
      consumer: consumer == freezed
          ? _value.consumer
          : consumer // ignore: cast_nullable_to_non_nullable
              as ClientModel?,
      aeropay: aeropay == freezed
          ? _value.aeropay
          : aeropay // ignore: cast_nullable_to_non_nullable
              as AeroPayModel?,
      member: member == freezed
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as MemberResponseModel?,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointModel>?,
    ));
  }

  @override
  $DispensaryModelCopyWith<$Res>? get dispensary {
    if (_value.dispensary == null) {
      return null;
    }

    return $DispensaryModelCopyWith<$Res>(_value.dispensary!, (value) {
      return _then(_value.copyWith(dispensary: value));
    });
  }

  @override
  $ClientModelCopyWith<$Res>? get consumer {
    if (_value.consumer == null) {
      return null;
    }

    return $ClientModelCopyWith<$Res>(_value.consumer!, (value) {
      return _then(_value.copyWith(consumer: value));
    });
  }

  @override
  $AeroPayModelCopyWith<$Res>? get aeropay {
    if (_value.aeropay == null) {
      return null;
    }

    return $AeroPayModelCopyWith<$Res>(_value.aeropay!, (value) {
      return _then(_value.copyWith(aeropay: value));
    });
  }

  @override
  $MemberResponseModelCopyWith<$Res>? get member {
    if (_value.member == null) {
      return null;
    }

    return $MemberResponseModelCopyWith<$Res>(_value.member!, (value) {
      return _then(_value.copyWith(member: value));
    });
  }
}

/// @nodoc
abstract class _$LoginResponseModelCopyWith<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  factory _$LoginResponseModelCopyWith(
          _LoginResponseModel value, $Res Function(_LoginResponseModel) then) =
      __$LoginResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String token,
      String? role,
      DispensaryModel? dispensary,
      ClientModel? consumer,
      AeroPayModel? aeropay,
      MemberResponseModel? member,
      List<PointModel>? points});

  @override
  $DispensaryModelCopyWith<$Res>? get dispensary;
  @override
  $ClientModelCopyWith<$Res>? get consumer;
  @override
  $AeroPayModelCopyWith<$Res>? get aeropay;
  @override
  $MemberResponseModelCopyWith<$Res>? get member;
}

/// @nodoc
class __$LoginResponseModelCopyWithImpl<$Res>
    extends _$LoginResponseModelCopyWithImpl<$Res>
    implements _$LoginResponseModelCopyWith<$Res> {
  __$LoginResponseModelCopyWithImpl(
      _LoginResponseModel _value, $Res Function(_LoginResponseModel) _then)
      : super(_value, (v) => _then(v as _LoginResponseModel));

  @override
  _LoginResponseModel get _value => super._value as _LoginResponseModel;

  @override
  $Res call({
    Object? token = freezed,
    Object? role = freezed,
    Object? dispensary = freezed,
    Object? consumer = freezed,
    Object? aeropay = freezed,
    Object? member = freezed,
    Object? points = freezed,
  }) {
    return _then(_LoginResponseModel(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      dispensary: dispensary == freezed
          ? _value.dispensary
          : dispensary // ignore: cast_nullable_to_non_nullable
              as DispensaryModel?,
      consumer: consumer == freezed
          ? _value.consumer
          : consumer // ignore: cast_nullable_to_non_nullable
              as ClientModel?,
      aeropay: aeropay == freezed
          ? _value.aeropay
          : aeropay // ignore: cast_nullable_to_non_nullable
              as AeroPayModel?,
      member: member == freezed
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as MemberResponseModel?,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginResponseModel implements _LoginResponseModel {
  _$_LoginResponseModel(
      {required this.token,
      this.role,
      this.dispensary,
      this.consumer,
      this.aeropay,
      this.member,
      this.points});

  factory _$_LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResponseModelFromJson(json);

  @override
  final String token;
  @override
  final String? role;
  @override
  final DispensaryModel? dispensary;
  @override
  final ClientModel? consumer;
  @override
  final AeroPayModel? aeropay;
  @override
  final MemberResponseModel? member;
  @override
  final List<PointModel>? points;

  @override
  String toString() {
    return 'LoginResponseModel(token: $token, role: $role, dispensary: $dispensary, consumer: $consumer, aeropay: $aeropay, member: $member, points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginResponseModel &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.dispensary, dispensary) ||
                const DeepCollectionEquality()
                    .equals(other.dispensary, dispensary)) &&
            (identical(other.consumer, consumer) ||
                const DeepCollectionEquality()
                    .equals(other.consumer, consumer)) &&
            (identical(other.aeropay, aeropay) ||
                const DeepCollectionEquality()
                    .equals(other.aeropay, aeropay)) &&
            (identical(other.member, member) ||
                const DeepCollectionEquality().equals(other.member, member)) &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(dispensary) ^
      const DeepCollectionEquality().hash(consumer) ^
      const DeepCollectionEquality().hash(aeropay) ^
      const DeepCollectionEquality().hash(member) ^
      const DeepCollectionEquality().hash(points);

  @JsonKey(ignore: true)
  @override
  _$LoginResponseModelCopyWith<_LoginResponseModel> get copyWith =>
      __$LoginResponseModelCopyWithImpl<_LoginResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResponseModelToJson(this);
  }
}

abstract class _LoginResponseModel implements LoginResponseModel {
  factory _LoginResponseModel(
      {required String token,
      String? role,
      DispensaryModel? dispensary,
      ClientModel? consumer,
      AeroPayModel? aeropay,
      MemberResponseModel? member,
      List<PointModel>? points}) = _$_LoginResponseModel;

  factory _LoginResponseModel.fromJson(Map<String, dynamic> json) =
      _$_LoginResponseModel.fromJson;

  @override
  String get token => throw _privateConstructorUsedError;
  @override
  String? get role => throw _privateConstructorUsedError;
  @override
  DispensaryModel? get dispensary => throw _privateConstructorUsedError;
  @override
  ClientModel? get consumer => throw _privateConstructorUsedError;
  @override
  AeroPayModel? get aeropay => throw _privateConstructorUsedError;
  @override
  MemberResponseModel? get member => throw _privateConstructorUsedError;
  @override
  List<PointModel>? get points => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginResponseModelCopyWith<_LoginResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
