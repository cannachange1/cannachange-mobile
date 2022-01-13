// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispensary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DispensaryModel _$$_DispensaryModelFromJson(Map<String, dynamic> json) =>
    _$_DispensaryModel(
      id: json['id'] as int,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      addressLine1: json['addressLine1'] as String?,
      addressLine2: json['addressLine2'] as String?,
      workingHours: json['workingHours'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_DispensaryModelToJson(_$_DispensaryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'workingHours': instance.workingHours,
      'email': instance.email,
    };
