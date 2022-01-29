// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClientModel _$$_ClientModelFromJson(Map<String, dynamic> json) =>
    _$_ClientModel(
      id: json['id'] as int?,
      wasteSaved: json['wasteSaved'] as int?,
      qrCode: json['qrCode'] as String?,
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      image: json['image'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_ClientModelToJson(_$_ClientModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'wasteSaved': instance.wasteSaved,
      'qrCode': instance.qrCode,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'image': instance.image,
      'email': instance.email,
    };
