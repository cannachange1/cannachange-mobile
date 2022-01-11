// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      id: json['id'] as int?,
      phone: json['phone'] as String?,
      login: json['login'] as String,
      imageUrl: json['imageUrl'] as String?,
      mainSource: json['mainSource'] as String,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'id': instance.id,
      'phone': instance.phone,
      'login': instance.login,
      'imageUrl': instance.imageUrl,
      'mainSource': instance.mainSource,
      'password': instance.password,
    };
