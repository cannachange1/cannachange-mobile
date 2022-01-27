import 'package:cannachange/model/point_model/point_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../member_response/member_response_model.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
class LoginResponseModel with _$LoginResponseModel {
  factory LoginResponseModel({
    required String token,
    String? role,
    MemberResponseModel? member,
    List<PointModel>? points,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}
