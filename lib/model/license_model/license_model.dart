import 'package:freezed_annotation/freezed_annotation.dart';

part 'license_model.freezed.dart';
part 'license_model.g.dart';

@freezed
class LicenseModel with _$LicenseModel {
  factory LicenseModel({
     String? organisationId,
     String? firstName,
     String? lastName,
     String? avatar,
     String? username,
     List<LicenseModel>? licenses,
  }) = _LicenseModel;

  factory LicenseModel.fromJson(Map<String, dynamic> json) =>
      _$LicenseModelFromJson(json);
}
