// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterResponse _$$_RegisterResponseFromJson(Map<String, dynamic> json) =>
    _$_RegisterResponse(
      token: json['token'] as String,
      role: json['role'] as String?,
      dispensary: json['dispensary'] == null
          ? null
          : DispensaryModel.fromJson(
              json['dispensary'] as Map<String, dynamic>),
      consumer: json['consumer'] == null
          ? null
          : ClientModel.fromJson(json['consumer'] as Map<String, dynamic>),
      member: json['member'] == null
          ? null
          : MemberResponseModel.fromJson(
              json['member'] as Map<String, dynamic>),
      aeropay: json['aeropay'] == null
          ? null
          : AeroPayModel.fromJson(json['aeropay'] as Map<String, dynamic>),
      points: (json['points'] as List<dynamic>?)
          ?.map((e) => PointModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RegisterResponseToJson(_$_RegisterResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'role': instance.role,
      'dispensary': instance.dispensary,
      'consumer': instance.consumer,
      'member': instance.member,
      'aeropay': instance.aeropay,
      'points': instance.points,
    };
