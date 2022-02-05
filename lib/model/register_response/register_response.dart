import 'package:freezed_annotation/freezed_annotation.dart';

import '../client/client_model.dart';
import '../dispensary/dispensary_model.dart';
import '../member_response/member_response_model.dart';
import '../point_model/point_model.dart';


part 'register_response.freezed.dart';
part 'register_response.g.dart';

@freezed
class RegisterResponse with _$RegisterResponse {
  factory RegisterResponse({
    required String token,
    String? role,
    DispensaryModel? dispensary,
    ClientModel? consumer,
    MemberResponseModel? member,
    List<PointModel>? points,
  }) = _RegisterResponse;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}
