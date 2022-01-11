// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'member_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberResponseModel _$MemberResponseModelFromJson(Map<String, dynamic> json) {
  return _MemberResponseModel.fromJson(json);
}

/// @nodoc
class _$MemberResponseModelTearOff {
  const _$MemberResponseModelTearOff();

  _MemberResponseModel call(
      {int? id, String? email, int? cardNumber, UserModel? user}) {
    return _MemberResponseModel(
      id: id,
      email: email,
      cardNumber: cardNumber,
      user: user,
    );
  }

  MemberResponseModel fromJson(Map<String, Object> json) {
    return MemberResponseModel.fromJson(json);
  }
}

/// @nodoc
const $MemberResponseModel = _$MemberResponseModelTearOff();

/// @nodoc
mixin _$MemberResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  int? get cardNumber => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberResponseModelCopyWith<MemberResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberResponseModelCopyWith<$Res> {
  factory $MemberResponseModelCopyWith(
          MemberResponseModel value, $Res Function(MemberResponseModel) then) =
      _$MemberResponseModelCopyWithImpl<$Res>;
  $Res call({int? id, String? email, int? cardNumber, UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$MemberResponseModelCopyWithImpl<$Res>
    implements $MemberResponseModelCopyWith<$Res> {
  _$MemberResponseModelCopyWithImpl(this._value, this._then);

  final MemberResponseModel _value;
  // ignore: unused_field
  final $Res Function(MemberResponseModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? cardNumber = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      cardNumber: cardNumber == freezed
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  @override
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$MemberResponseModelCopyWith<$Res>
    implements $MemberResponseModelCopyWith<$Res> {
  factory _$MemberResponseModelCopyWith(_MemberResponseModel value,
          $Res Function(_MemberResponseModel) then) =
      __$MemberResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? email, int? cardNumber, UserModel? user});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$MemberResponseModelCopyWithImpl<$Res>
    extends _$MemberResponseModelCopyWithImpl<$Res>
    implements _$MemberResponseModelCopyWith<$Res> {
  __$MemberResponseModelCopyWithImpl(
      _MemberResponseModel _value, $Res Function(_MemberResponseModel) _then)
      : super(_value, (v) => _then(v as _MemberResponseModel));

  @override
  _MemberResponseModel get _value => super._value as _MemberResponseModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? cardNumber = freezed,
    Object? user = freezed,
  }) {
    return _then(_MemberResponseModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      cardNumber: cardNumber == freezed
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemberResponseModel implements _MemberResponseModel {
  _$_MemberResponseModel({this.id, this.email, this.cardNumber, this.user});

  factory _$_MemberResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_MemberResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final String? email;
  @override
  final int? cardNumber;
  @override
  final UserModel? user;

  @override
  String toString() {
    return 'MemberResponseModel(id: $id, email: $email, cardNumber: $cardNumber, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MemberResponseModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.cardNumber, cardNumber) ||
                const DeepCollectionEquality()
                    .equals(other.cardNumber, cardNumber)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(cardNumber) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$MemberResponseModelCopyWith<_MemberResponseModel> get copyWith =>
      __$MemberResponseModelCopyWithImpl<_MemberResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberResponseModelToJson(this);
  }
}

abstract class _MemberResponseModel implements MemberResponseModel {
  factory _MemberResponseModel(
      {int? id,
      String? email,
      int? cardNumber,
      UserModel? user}) = _$_MemberResponseModel;

  factory _MemberResponseModel.fromJson(Map<String, dynamic> json) =
      _$_MemberResponseModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  int? get cardNumber => throw _privateConstructorUsedError;
  @override
  UserModel? get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MemberResponseModelCopyWith<_MemberResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
