// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scan_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScanResponseModel _$ScanResponseModelFromJson(Map<String, dynamic> json) {
  return _ScanResponseModel.fromJson(json);
}

/// @nodoc
class _$ScanResponseModelTearOff {
  const _$ScanResponseModelTearOff();

  _ScanResponseModel call(
      {String? imageUrl,
      String? discountCode,
      String? name,
      int? point,
      int? pointId}) {
    return _ScanResponseModel(
      imageUrl: imageUrl,
      discountCode: discountCode,
      name: name,
      point: point,
      pointId: pointId,
    );
  }

  ScanResponseModel fromJson(Map<String, Object> json) {
    return ScanResponseModel.fromJson(json);
  }
}

/// @nodoc
const $ScanResponseModel = _$ScanResponseModelTearOff();

/// @nodoc
mixin _$ScanResponseModel {
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get discountCode => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get point => throw _privateConstructorUsedError;
  int? get pointId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScanResponseModelCopyWith<ScanResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanResponseModelCopyWith<$Res> {
  factory $ScanResponseModelCopyWith(
          ScanResponseModel value, $Res Function(ScanResponseModel) then) =
      _$ScanResponseModelCopyWithImpl<$Res>;
  $Res call(
      {String? imageUrl,
      String? discountCode,
      String? name,
      int? point,
      int? pointId});
}

/// @nodoc
class _$ScanResponseModelCopyWithImpl<$Res>
    implements $ScanResponseModelCopyWith<$Res> {
  _$ScanResponseModelCopyWithImpl(this._value, this._then);

  final ScanResponseModel _value;
  // ignore: unused_field
  final $Res Function(ScanResponseModel) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? discountCode = freezed,
    Object? name = freezed,
    Object? point = freezed,
    Object? pointId = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      discountCode: discountCode == freezed
          ? _value.discountCode
          : discountCode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int?,
      pointId: pointId == freezed
          ? _value.pointId
          : pointId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ScanResponseModelCopyWith<$Res>
    implements $ScanResponseModelCopyWith<$Res> {
  factory _$ScanResponseModelCopyWith(
          _ScanResponseModel value, $Res Function(_ScanResponseModel) then) =
      __$ScanResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? imageUrl,
      String? discountCode,
      String? name,
      int? point,
      int? pointId});
}

/// @nodoc
class __$ScanResponseModelCopyWithImpl<$Res>
    extends _$ScanResponseModelCopyWithImpl<$Res>
    implements _$ScanResponseModelCopyWith<$Res> {
  __$ScanResponseModelCopyWithImpl(
      _ScanResponseModel _value, $Res Function(_ScanResponseModel) _then)
      : super(_value, (v) => _then(v as _ScanResponseModel));

  @override
  _ScanResponseModel get _value => super._value as _ScanResponseModel;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? discountCode = freezed,
    Object? name = freezed,
    Object? point = freezed,
    Object? pointId = freezed,
  }) {
    return _then(_ScanResponseModel(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      discountCode: discountCode == freezed
          ? _value.discountCode
          : discountCode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int?,
      pointId: pointId == freezed
          ? _value.pointId
          : pointId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScanResponseModel implements _ScanResponseModel {
  _$_ScanResponseModel(
      {this.imageUrl, this.discountCode, this.name, this.point, this.pointId});

  factory _$_ScanResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ScanResponseModelFromJson(json);

  @override
  final String? imageUrl;
  @override
  final String? discountCode;
  @override
  final String? name;
  @override
  final int? point;
  @override
  final int? pointId;

  @override
  String toString() {
    return 'ScanResponseModel(imageUrl: $imageUrl, discountCode: $discountCode, name: $name, point: $point, pointId: $pointId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScanResponseModel &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.discountCode, discountCode) ||
                const DeepCollectionEquality()
                    .equals(other.discountCode, discountCode)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.point, point) ||
                const DeepCollectionEquality().equals(other.point, point)) &&
            (identical(other.pointId, pointId) ||
                const DeepCollectionEquality().equals(other.pointId, pointId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(discountCode) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(point) ^
      const DeepCollectionEquality().hash(pointId);

  @JsonKey(ignore: true)
  @override
  _$ScanResponseModelCopyWith<_ScanResponseModel> get copyWith =>
      __$ScanResponseModelCopyWithImpl<_ScanResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScanResponseModelToJson(this);
  }
}

abstract class _ScanResponseModel implements ScanResponseModel {
  factory _ScanResponseModel(
      {String? imageUrl,
      String? discountCode,
      String? name,
      int? point,
      int? pointId}) = _$_ScanResponseModel;

  factory _ScanResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ScanResponseModel.fromJson;

  @override
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  String? get discountCode => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get point => throw _privateConstructorUsedError;
  @override
  int? get pointId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScanResponseModelCopyWith<_ScanResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
