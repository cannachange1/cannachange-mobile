// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemberResponseModel _$$_MemberResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_MemberResponseModel(
      id: json['id'] as int?,
      qrCode: json['qrCode'] as String?,
      wastSaved: json['wastSaved'] as int?,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MemberResponseModelToJson(
        _$_MemberResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qrCode': instance.qrCode,
      'wastSaved': instance.wastSaved,
      'user': instance.user,
    };
