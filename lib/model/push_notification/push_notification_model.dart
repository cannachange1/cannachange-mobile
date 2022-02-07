import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_notification_model.freezed.dart';
part 'push_notification_model.g.dart';

@freezed
class PushNotificationModel with _$PushNotificationModel {
  factory PushNotificationModel({
     String? title,
     String? body,
  }) = _PushNotificationModel;

  factory PushNotificationModel.fromJson(Map<String, dynamic> json) =>
      _$PushNotificationModelFromJson(json);
}
