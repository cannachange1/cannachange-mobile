import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user_model.dart';

part 'member_response_model.freezed.dart';
part 'member_response_model.g.dart';

@freezed
class MemberResponseModel with _$MemberResponseModel {
  factory MemberResponseModel({
    int? id,
    String? qrCode,
    int? wastSaved,
    UserModel? user,
  }) = _MemberResponseModel;

  factory MemberResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MemberResponseModelFromJson(json);
}
