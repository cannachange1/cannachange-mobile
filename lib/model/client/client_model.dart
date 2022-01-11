import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_model.freezed.dart';
part 'client_model.g.dart';

@freezed
class ClientModel with _$ClientModel {
  factory ClientModel({
     String? organisationId,
     String? firstName,
     String? lastName,
     String? avatar,
     String? username,
     //List<LicenseModel>? licenses,
  }) = _ClientModel;

  factory ClientModel.fromJson(Map<String, dynamic> json) =>
      _$ClientModelFromJson(json);
}
