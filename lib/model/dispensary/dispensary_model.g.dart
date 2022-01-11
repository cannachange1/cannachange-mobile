// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispensary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DispensaryModel _$$_DispensaryModelFromJson(Map<String, dynamic> json) =>
    _$_DispensaryModel(
      organisationId: json['organisationId'] as int,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      avatar: json['avatar'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$$_DispensaryModelToJson(_$_DispensaryModel instance) =>
    <String, dynamic>{
      'organisationId': instance.organisationId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'avatar': instance.avatar,
      'username': instance.username,
    };
