// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) {
  return _RegisterResponse.fromJson(json);
}

/// @nodoc
class _$RegisterResponseTearOff {
  const _$RegisterResponseTearOff();

  _RegisterResponse call(
      {required String token,
      String? role,
      DispensaryModel? dispensary,
      ClientModel? consumer,
      MemberResponseModel? member,
      AeroPayModel? aeropay,
      List<PointModel>? points}) {
    return _RegisterResponse(
      token: token,
      role: role,
      dispensary: dispensary,
      consumer: consumer,
      member: member,
      aeropay: aeropay,
      points: points,
    );
  }

  RegisterResponse fromJson(Map<String, Object> json) {
    return RegisterResponse.fromJson(json);
  }
}

/// @nodoc
const $RegisterResponse = _$RegisterResponseTearOff();

/// @nodoc
mixin _$RegisterResponse {
  String get token => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  DispensaryModel? get dispensary => throw _privateConstructorUsedError;
  ClientModel? get consumer => throw _privateConstructorUsedError;
  MemberResponseModel? get member => throw _privateConstructorUsedError;
  AeroPayModel? get aeropay => throw _privateConstructorUsedError;
  List<PointModel>? get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterResponseCopyWith<RegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterResponseCopyWith<$Res> {
  factory $RegisterResponseCopyWith(
          RegisterResponse value, $Res Function(RegisterResponse) then) =
      _$RegisterResponseCopyWithImpl<$Res>;
  $Res call(
      {String token,
      String? role,
      DispensaryModel? dispensary,
      ClientModel? consumer,
      MemberResponseModel? member,
      AeroPayModel? aeropay,
      List<PointModel>? points});

  $DispensaryModelCopyWith<$Res>? get dispensary;
  $ClientModelCopyWith<$Res>? get consumer;
  $MemberResponseModelCopyWith<$Res>? get member;
  $AeroPayModelCopyWith<$Res>? get aeropay;
}

/// @nodoc
class _$RegisterResponseCopyWithImpl<$Res>
    implements $RegisterResponseCopyWith<$Res> {
  _$RegisterResponseCopyWithImpl(this._value, this._then);

  final RegisterResponse _value;
  // ignore: unused_field
  final $Res Function(RegisterResponse) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? role = freezed,
    Object? dispensary = freezed,
    Object? consumer = freezed,
    Object? member = freezed,
    Object? aeropay = freezed,
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
      member: member == freezed
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as MemberResponseModel?,
      aeropay: aeropay == freezed
          ? _value.aeropay
          : aeropay // ignore: cast_nullable_to_non_nullable
              as AeroPayModel?,
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
  $MemberResponseModelCopyWith<$Res>? get member {
    if (_value.member == null) {
      return null;
    }

    return $MemberResponseModelCopyWith<$Res>(_value.member!, (value) {
      return _then(_value.copyWith(member: value));
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
}

/// @nodoc
abstract class _$RegisterResponseCopyWith<$Res>
    implements $RegisterResponseCopyWith<$Res> {
  factory _$RegisterResponseCopyWith(
          _RegisterResponse value, $Res Function(_RegisterResponse) then) =
      __$RegisterResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String token,
      String? role,
      DispensaryModel? dispensary,
      ClientModel? consumer,
      MemberResponseModel? member,
      AeroPayModel? aeropay,
      List<PointModel>? points});

  @override
  $DispensaryModelCopyWith<$Res>? get dispensary;
  @override
  $ClientModelCopyWith<$Res>? get consumer;
  @override
  $MemberResponseModelCopyWith<$Res>? get member;
  @override
  $AeroPayModelCopyWith<$Res>? get aeropay;
}

/// @nodoc
class __$RegisterResponseCopyWithImpl<$Res>
    extends _$RegisterResponseCopyWithImpl<$Res>
    implements _$RegisterResponseCopyWith<$Res> {
  __$RegisterResponseCopyWithImpl(
      _RegisterResponse _value, $Res Function(_RegisterResponse) _then)
      : super(_value, (v) => _then(v as _RegisterResponse));

  @override
  _RegisterResponse get _value => super._value as _RegisterResponse;

  @override
  $Res call({
    Object? token = freezed,
    Object? role = freezed,
    Object? dispensary = freezed,
    Object? consumer = freezed,
    Object? member = freezed,
    Object? aeropay = freezed,
    Object? points = freezed,
  }) {
    return _then(_RegisterResponse(
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
      member: member == freezed
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as MemberResponseModel?,
      aeropay: aeropay == freezed
          ? _value.aeropay
          : aeropay // ignore: cast_nullable_to_non_nullable
              as AeroPayModel?,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterResponse implements _RegisterResponse {
  _$_RegisterResponse(
      {required this.token,
      this.role,
      this.dispensary,
      this.consumer,
      this.member,
      this.aeropay,
      this.points});

  factory _$_RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterResponseFromJson(json);

  @override
  final String token;
  @override
  final String? role;
  @override
  final DispensaryModel? dispensary;
  @override
  final ClientModel? consumer;
  @override
  final MemberResponseModel? member;
  @override
  final AeroPayModel? aeropay;
  @override
  final List<PointModel>? points;

  @override
  String toString() {
    return 'RegisterResponse(token: $token, role: $role, dispensary: $dispensary, consumer: $consumer, member: $member, aeropay: $aeropay, points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterResponse &&
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
            (identical(other.member, member) ||
                const DeepCollectionEquality().equals(other.member, member)) &&
            (identical(other.aeropay, aeropay) ||
                const DeepCollectionEquality()
                    .equals(other.aeropay, aeropay)) &&
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
      const DeepCollectionEquality().hash(member) ^
      const DeepCollectionEquality().hash(aeropay) ^
      const DeepCollectionEquality().hash(points);

  @JsonKey(ignore: true)
  @override
  _$RegisterResponseCopyWith<_RegisterResponse> get copyWith =>
      __$RegisterResponseCopyWithImpl<_RegisterResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterResponseToJson(this);
  }
}

abstract class _RegisterResponse implements RegisterResponse {
  factory _RegisterResponse(
      {required String token,
      String? role,
      DispensaryModel? dispensary,
      ClientModel? consumer,
      MemberResponseModel? member,
      AeroPayModel? aeropay,
      List<PointModel>? points}) = _$_RegisterResponse;

  factory _RegisterResponse.fromJson(Map<String, dynamic> json) =
      _$_RegisterResponse.fromJson;

  @override
  String get token => throw _privateConstructorUsedError;
  @override
  String? get role => throw _privateConstructorUsedError;
  @override
  DispensaryModel? get dispensary => throw _privateConstructorUsedError;
  @override
  ClientModel? get consumer => throw _privateConstructorUsedError;
  @override
  MemberResponseModel? get member => throw _privateConstructorUsedError;
  @override
  AeroPayModel? get aeropay => throw _privateConstructorUsedError;
  @override
  List<PointModel>? get points => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterResponseCopyWith<_RegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
