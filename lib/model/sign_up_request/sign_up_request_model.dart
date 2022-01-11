import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user_model.dart';

part 'sign_up_request_model.freezed.dart';
part 'sign_up_request_model.g.dart';

@freezed
class SignUpRequestModel with _$SignUpRequestModel {
  factory SignUpRequestModel({
    required UserModel user,
  }) = _SignUpRequestModel;

  factory SignUpRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestModelFromJson(json);
}
