// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponseModel _$$_LoginResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_LoginResponseModel(
      token: json['token'] as String,
      status: json['status'] as String?,
      member: json['member'] == null
          ? null
          : MemberResponseModel.fromJson(
              json['member'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginResponseModelToJson(
        _$_LoginResponseModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'status': instance.status,
      'member': instance.member,
    };
