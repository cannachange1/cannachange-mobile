// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LicenseModel _$$_LicenseModelFromJson(Map<String, dynamic> json) =>
    _$_LicenseModel(
      organisationId: json['organisationId'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      avatar: json['avatar'] as String?,
      username: json['username'] as String?,
      licenses: (json['licenses'] as List<dynamic>?)
          ?.map((e) => LicenseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LicenseModelToJson(_$_LicenseModel instance) =>
    <String, dynamic>{
      'organisationId': instance.organisationId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'avatar': instance.avatar,
      'username': instance.username,
      'licenses': instance.licenses,
    };
