import 'package:freezed_annotation/freezed_annotation.dart';

part 'dispensary_model.freezed.dart';
part 'dispensary_model.g.dart';

@freezed
class DispensaryModel with _$DispensaryModel {
  factory DispensaryModel({
    required int organisationId,
     String? firstName,
     String? lastName,
     String? avatar,
     String? username,
  //   List<LicenseModel>? licenses,
  }) = _DispensaryModel;

  factory DispensaryModel.fromJson(Map<String, dynamic> json) =>
      _$DispensaryModelFromJson(json);
}
