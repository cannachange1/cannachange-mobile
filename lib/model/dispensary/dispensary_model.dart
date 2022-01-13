import 'package:freezed_annotation/freezed_annotation.dart';

part 'dispensary_model.freezed.dart';
part 'dispensary_model.g.dart';

@freezed
class DispensaryModel with _$DispensaryModel {
  factory DispensaryModel({
    required int id,
     String? name,
     String? phone,
     String? addressLine1,
     String? addressLine2,
     String? workingHours,
     String? email,
  //   List<LicenseModel>? licenses,
  }) = _DispensaryModel;

  factory DispensaryModel.fromJson(Map<String, dynamic> json) =>
      _$DispensaryModelFromJson(json);
}
