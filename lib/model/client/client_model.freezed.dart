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
      {int? id,
      int? wasteSaved,
      String? qrCode,
      String? name,
      String? phoneNumber,
      String? image,
      String? email}) {
    return _ClientModel(
      id: id,
      wasteSaved: wasteSaved,
      qrCode: qrCode,
      name: name,
      phoneNumber: phoneNumber,
      image: image,
      email: email,
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
  int? get id => throw _privateConstructorUsedError;
  int? get wasteSaved => throw _privateConstructorUsedError;
  String? get qrCode => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

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
      {int? id,
      int? wasteSaved,
      String? qrCode,
      String? name,
      String? phoneNumber,
      String? image,
      String? email});
}

/// @nodoc
class _$ClientModelCopyWithImpl<$Res> implements $ClientModelCopyWith<$Res> {
  _$ClientModelCopyWithImpl(this._value, this._then);

  final ClientModel _value;
  // ignore: unused_field
  final $Res Function(ClientModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? wasteSaved = freezed,
    Object? qrCode = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? image = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      wasteSaved: wasteSaved == freezed
          ? _value.wasteSaved
          : wasteSaved // ignore: cast_nullable_to_non_nullable
              as int?,
      qrCode: qrCode == freezed
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
      {int? id,
      int? wasteSaved,
      String? qrCode,
      String? name,
      String? phoneNumber,
      String? image,
      String? email});
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
    Object? id = freezed,
    Object? wasteSaved = freezed,
    Object? qrCode = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? image = freezed,
    Object? email = freezed,
  }) {
    return _then(_ClientModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      wasteSaved: wasteSaved == freezed
          ? _value.wasteSaved
          : wasteSaved // ignore: cast_nullable_to_non_nullable
              as int?,
      qrCode: qrCode == freezed
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClientModel implements _ClientModel {
  _$_ClientModel(
      {this.id,
      this.wasteSaved,
      this.qrCode,
      this.name,
      this.phoneNumber,
      this.image,
      this.email});

  factory _$_ClientModel.fromJson(Map<String, dynamic> json) =>
      _$$_ClientModelFromJson(json);

  @override
  final int? id;
  @override
  final int? wasteSaved;
  @override
  final String? qrCode;
  @override
  final String? name;
  @override
  final String? phoneNumber;
  @override
  final String? image;
  @override
  final String? email;

  @override
  String toString() {
    return 'ClientModel(id: $id, wasteSaved: $wasteSaved, qrCode: $qrCode, name: $name, phoneNumber: $phoneNumber, image: $image, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ClientModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.wasteSaved, wasteSaved) ||
                const DeepCollectionEquality()
                    .equals(other.wasteSaved, wasteSaved)) &&
            (identical(other.qrCode, qrCode) ||
                const DeepCollectionEquality().equals(other.qrCode, qrCode)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(wasteSaved) ^
      const DeepCollectionEquality().hash(qrCode) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(email);

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
      {int? id,
      int? wasteSaved,
      String? qrCode,
      String? name,
      String? phoneNumber,
      String? image,
      String? email}) = _$_ClientModel;

  factory _ClientModel.fromJson(Map<String, dynamic> json) =
      _$_ClientModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  int? get wasteSaved => throw _privateConstructorUsedError;
  @override
  String? get qrCode => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get phoneNumber => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ClientModelCopyWith<_ClientModel> get copyWith =>
      throw _privateConstructorUsedError;
}
