// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterResponse _$$_RegisterResponseFromJson(Map<String, dynamic> json) =>
    _$_RegisterResponse(
      sessionId: json['sessionId'] as String?,
      message: json['message'] as String?,
      subscriptionId: json['subscriptionId'] as String?,
    );

Map<String, dynamic> _$$_RegisterResponseToJson(_$_RegisterResponse instance) =>
    <String, dynamic>{
      'sessionId': instance.sessionId,
      'message': instance.message,
      'subscriptionId': instance.subscriptionId,
    };
