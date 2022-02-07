// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'push_notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PushNotificationModel _$PushNotificationModelFromJson(
    Map<String, dynamic> json) {
  return _PushNotificationModel.fromJson(json);
}

/// @nodoc
class _$PushNotificationModelTearOff {
  const _$PushNotificationModelTearOff();

  _PushNotificationModel call({String? title, String? body}) {
    return _PushNotificationModel(
      title: title,
      body: body,
    );
  }

  PushNotificationModel fromJson(Map<String, Object> json) {
    return PushNotificationModel.fromJson(json);
  }
}

/// @nodoc
const $PushNotificationModel = _$PushNotificationModelTearOff();

/// @nodoc
mixin _$PushNotificationModel {
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PushNotificationModelCopyWith<PushNotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushNotificationModelCopyWith<$Res> {
  factory $PushNotificationModelCopyWith(PushNotificationModel value,
          $Res Function(PushNotificationModel) then) =
      _$PushNotificationModelCopyWithImpl<$Res>;
  $Res call({String? title, String? body});
}

/// @nodoc
class _$PushNotificationModelCopyWithImpl<$Res>
    implements $PushNotificationModelCopyWith<$Res> {
  _$PushNotificationModelCopyWithImpl(this._value, this._then);

  final PushNotificationModel _value;
  // ignore: unused_field
  final $Res Function(PushNotificationModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PushNotificationModelCopyWith<$Res>
    implements $PushNotificationModelCopyWith<$Res> {
  factory _$PushNotificationModelCopyWith(_PushNotificationModel value,
          $Res Function(_PushNotificationModel) then) =
      __$PushNotificationModelCopyWithImpl<$Res>;
  @override
  $Res call({String? title, String? body});
}

/// @nodoc
class __$PushNotificationModelCopyWithImpl<$Res>
    extends _$PushNotificationModelCopyWithImpl<$Res>
    implements _$PushNotificationModelCopyWith<$Res> {
  __$PushNotificationModelCopyWithImpl(_PushNotificationModel _value,
      $Res Function(_PushNotificationModel) _then)
      : super(_value, (v) => _then(v as _PushNotificationModel));

  @override
  _PushNotificationModel get _value => super._value as _PushNotificationModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_PushNotificationModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PushNotificationModel implements _PushNotificationModel {
  _$_PushNotificationModel({this.title, this.body});

  factory _$_PushNotificationModel.fromJson(Map<String, dynamic> json) =>
      _$$_PushNotificationModelFromJson(json);

  @override
  final String? title;
  @override
  final String? body;

  @override
  String toString() {
    return 'PushNotificationModel(title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PushNotificationModel &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  _$PushNotificationModelCopyWith<_PushNotificationModel> get copyWith =>
      __$PushNotificationModelCopyWithImpl<_PushNotificationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PushNotificationModelToJson(this);
  }
}

abstract class _PushNotificationModel implements PushNotificationModel {
  factory _PushNotificationModel({String? title, String? body}) =
      _$_PushNotificationModel;

  factory _PushNotificationModel.fromJson(Map<String, dynamic> json) =
      _$_PushNotificationModel.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PushNotificationModelCopyWith<_PushNotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
