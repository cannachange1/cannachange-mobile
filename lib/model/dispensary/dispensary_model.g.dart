// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispensary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DispensaryModel _$$_DispensaryModelFromJson(Map<String, dynamic> json) =>
    _$_DispensaryModel(
      id: json['id'] as int,
      businessName: json['businessName'] as String?,
      shippingAddress1: json['shippingAddress1'] as String?,
      shippingAddress2: json['shippingAddress2'] as String?,
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      workingHours: json['workingHours'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DispensaryModelToJson(_$_DispensaryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'businessName': instance.businessName,
      'shippingAddress1': instance.shippingAddress1,
      'shippingAddress2': instance.shippingAddress2,
      'address1': instance.address1,
      'address2': instance.address2,
      'email': instance.email,
      'name': instance.name,
      'phone': instance.phone,
      'workingHours': instance.workingHours,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
