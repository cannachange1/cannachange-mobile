import 'package:cannachange/model/dispensary/dispensary_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user_model.dart';

part 'point_model.freezed.dart';
part 'point_model.g.dart';

@freezed
class PointModel with _$PointModel {
  factory PointModel({
    int? id,
    String? name,
    int? point,
    String? discountCode,
  }) = _PointModel;

  factory PointModel.fromJson(Map<String, dynamic> json) =>
      _$PointModelFromJson(json);
}
