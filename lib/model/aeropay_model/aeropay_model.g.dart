// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aeropay_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AeroPayModel _$$_AeroPayModelFromJson(Map<String, dynamic> json) =>
    _$_AeroPayModel(
      token: json['token'] as String?,
      username: json['username'] as String?,
      fastlinkURL: json['fastlinkURL'] as String?,
      success: json['success'] as String?,
    );

Map<String, dynamic> _$$_AeroPayModelToJson(_$_AeroPayModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'username': instance.username,
      'fastlinkURL': instance.fastlinkURL,
      'success': instance.success,
    };
