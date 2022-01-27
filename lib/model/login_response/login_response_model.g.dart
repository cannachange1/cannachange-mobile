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
      'member': instance.member,
      'points': instance.points,
    };
