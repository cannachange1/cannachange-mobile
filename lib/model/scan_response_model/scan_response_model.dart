import 'package:cannachange/model/dispensary/dispensary_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user_model.dart';

part 'scan_response_model.freezed.dart';
part 'scan_response_model.g.dart';

@freezed
class ScanResponseModel with _$ScanResponseModel {
  factory ScanResponseModel({
    String? imageLink,
    String? discountCode,
    String? name,
    int? point,
    int? pointId,
  }) = _ScanResponseModel;

  factory ScanResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ScanResponseModelFromJson(json);
}
