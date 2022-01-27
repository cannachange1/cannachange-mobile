// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PointModel _$$_PointModelFromJson(Map<String, dynamic> json) =>
    _$_PointModel(
      id: json['id'] as int?,
      dispensary: json['dispensary'] == null
          ? null
          : DispensaryModel.fromJson(
              json['dispensary'] as Map<String, dynamic>),
      point: json['point'] as int?,
    );

Map<String, dynamic> _$$_PointModelToJson(_$_PointModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dispensary': instance.dispensary,
      'point': instance.point,
    };
