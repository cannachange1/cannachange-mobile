// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScanResponseModel _$$_ScanResponseModelFromJson(Map<String, dynamic> json) =>
    _$_ScanResponseModel(
      imageUrl: json['imageUrl'] as String?,
      discountCode: json['discountCode'] as String?,
      name: json['name'] as String?,
      point: json['point'] as int?,
      pointId: json['pointId'] as int?,
    );

Map<String, dynamic> _$$_ScanResponseModelToJson(
        _$_ScanResponseModel instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'discountCode': instance.discountCode,
      'name': instance.name,
      'point': instance.point,
      'pointId': instance.pointId,
    };
