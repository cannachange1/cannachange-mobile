import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_model.freezed.dart';
part 'client_model.g.dart';

@freezed
class ClientModel with _$ClientModel {
  factory ClientModel({
     int? id,
     int? wasteSaved,
     String? qrCode,
     String? name,
     String? phoneNumber,
     String? image,
     String? email,
  }) = _ClientModel;

  factory ClientModel.fromJson(Map<String, dynamic> json) =>
      _$ClientModelFromJson(json);
}
