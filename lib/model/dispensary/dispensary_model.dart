import 'package:freezed_annotation/freezed_annotation.dart';

part 'dispensary_model.freezed.dart';

part 'dispensary_model.g.dart';

@freezed
class DispensaryModel with _$DispensaryModel {
  factory DispensaryModel({
    int? id,
    String? businessName,
    String? shippingAddress1,
    String? shippingAddress2,
    String? address1,
    String? address2,
    String? email,
    String? name,
    String? phone,
    String? startHours,
    String? endHours,
    double? latitude,
    double? longitude,
  }) = _DispensaryModel;

  factory DispensaryModel.fromJson(Map<String, dynamic> json) =>
      _$DispensaryModelFromJson(json);
}
