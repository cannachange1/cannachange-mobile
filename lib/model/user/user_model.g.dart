// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      firstName: json['firstName'] as String,
      login: json['login'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'login': instance.login,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'imageUrl': instance.imageUrl,
    };
