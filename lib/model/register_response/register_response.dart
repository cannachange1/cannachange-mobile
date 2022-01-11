import 'package:freezed_annotation/freezed_annotation.dart';


part 'register_response.freezed.dart';
part 'register_response.g.dart';

@freezed
class RegisterResponse with _$RegisterResponse {
  factory RegisterResponse({
    String? sessionId,
    String? message,
    String? subscriptionId,
  }) = _RegisterResponse;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}
