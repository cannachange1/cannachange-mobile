// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'point_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PointModel _$PointModelFromJson(Map<String, dynamic> json) {
  return _PointModel.fromJson(json);
}

/// @nodoc
class _$PointModelTearOff {
  const _$PointModelTearOff();

  _PointModel call({int? id, String? name, int? point, String? discountCode}) {
    return _PointModel(
      id: id,
      name: name,
      point: point,
      discountCode: discountCode,
    );
  }

  PointModel fromJson(Map<String, Object> json) {
    return PointModel.fromJson(json);
  }
}

/// @nodoc
const $PointModel = _$PointModelTearOff();

/// @nodoc
mixin _$PointModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get point => throw _privateConstructorUsedError;
  String? get discountCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointModelCopyWith<PointModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointModelCopyWith<$Res> {
  factory $PointModelCopyWith(
          PointModel value, $Res Function(PointModel) then) =
      _$PointModelCopyWithImpl<$Res>;
  $Res call({int? id, String? name, int? point, String? discountCode});
}

/// @nodoc
class _$PointModelCopyWithImpl<$Res> implements $PointModelCopyWith<$Res> {
  _$PointModelCopyWithImpl(this._value, this._then);

  final PointModel _value;
  // ignore: unused_field
  final $Res Function(PointModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? point = freezed,
    Object? discountCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int?,
      discountCode: discountCode == freezed
          ? _value.discountCode
          : discountCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PointModelCopyWith<$Res> implements $PointModelCopyWith<$Res> {
  factory _$PointModelCopyWith(
          _PointModel value, $Res Function(_PointModel) then) =
      __$PointModelCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, int? point, String? discountCode});
}

/// @nodoc
class __$PointModelCopyWithImpl<$Res> extends _$PointModelCopyWithImpl<$Res>
    implements _$PointModelCopyWith<$Res> {
  __$PointModelCopyWithImpl(
      _PointModel _value, $Res Function(_PointModel) _then)
      : super(_value, (v) => _then(v as _PointModel));

  @override
  _PointModel get _value => super._value as _PointModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? point = freezed,
    Object? discountCode = freezed,
  }) {
    return _then(_PointModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int?,
      discountCode: discountCode == freezed
          ? _value.discountCode
          : discountCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PointModel implements _PointModel {
  _$_PointModel({this.id, this.name, this.point, this.discountCode});

  factory _$_PointModel.fromJson(Map<String, dynamic> json) =>
      _$$_PointModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? point;
  @override
  final String? discountCode;

  @override
  String toString() {
    return 'PointModel(id: $id, name: $name, point: $point, discountCode: $discountCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PointModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.point, point) ||
                const DeepCollectionEquality().equals(other.point, point)) &&
            (identical(other.discountCode, discountCode) ||
                const DeepCollectionEquality()
                    .equals(other.discountCode, discountCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(point) ^
      const DeepCollectionEquality().hash(discountCode);

  @JsonKey(ignore: true)
  @override
  _$PointModelCopyWith<_PointModel> get copyWith =>
      __$PointModelCopyWithImpl<_PointModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PointModelToJson(this);
  }
}

abstract class _PointModel implements PointModel {
  factory _PointModel(
      {int? id,
      String? name,
      int? point,
      String? discountCode}) = _$_PointModel;

  factory _PointModel.fromJson(Map<String, dynamic> json) =
      _$_PointModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get point => throw _privateConstructorUsedError;
  @override
  String? get discountCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PointModelCopyWith<_PointModel> get copyWith =>
      throw _privateConstructorUsedError;
}
