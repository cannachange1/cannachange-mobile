import 'package:freezed_annotation/freezed_annotation.dart';

part 'aeropay_model.freezed.dart';
part 'aeropay_model.g.dart';

@freezed
class AeroPayModel with _$AeroPayModel {
  factory AeroPayModel({
    String? token,
    String? username,
    String? fastlinkURL,
    String? success,
  }) = _AeroPayModel;

  factory AeroPayModel.fromJson(Map<String, dynamic> json) =>
      _$AeroPayModelFromJson(json);
}
