// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponseModel _$$_LoginResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_LoginResponseModel(
      token: json['token'] as String,
      role: json['role'] as String?,
      status: json['status'] as String?,
      dispensary: json['dispensary'] == null
          ? null
          : DispensaryModel.fromJson(
              json['dispensary'] as Map<String, dynamic>),
      consumer: json['consumer'] == null
          ? null
          : ClientModel.fromJson(json['consumer'] as Map<String, dynamic>),
      aeropay: json['aeropay'] == null
          ? null
          : AeroPayModel.fromJson(json['aeropay'] as Map<String, dynamic>),
      member: json['member'] == null
          ? null
          : MemberResponseModel.fromJson(
              json['member'] as Map<String, dynamic>),
      points: (json['points'] as List<dynamic>?)
          ?.map((e) => PointModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LoginResponseModelToJson(
        _$_LoginResponseModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'role': instance.role,
      'status': instance.status,
      'dispensary': instance.dispensary,
      'consumer': instance.consumer,
      'aeropay': instance.aeropay,
      'member': instance.member,
      'points': instance.points,
    };
