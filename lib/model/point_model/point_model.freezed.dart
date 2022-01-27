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

  _PointModel call({int? id, DispensaryModel? dispensary, int? point}) {
    return _PointModel(
      id: id,
      dispensary: dispensary,
      point: point,
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
  DispensaryModel? get dispensary => throw _privateConstructorUsedError;
  int? get point => throw _privateConstructorUsedError;

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
  $Res call({int? id, DispensaryModel? dispensary, int? point});

  $DispensaryModelCopyWith<$Res>? get dispensary;
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
    Object? dispensary = freezed,
    Object? point = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      dispensary: dispensary == freezed
          ? _value.dispensary
          : dispensary // ignore: cast_nullable_to_non_nullable
              as DispensaryModel?,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $DispensaryModelCopyWith<$Res>? get dispensary {
    if (_value.dispensary == null) {
      return null;
    }

    return $DispensaryModelCopyWith<$Res>(_value.dispensary!, (value) {
      return _then(_value.copyWith(dispensary: value));
    });
  }
}

/// @nodoc
abstract class _$PointModelCopyWith<$Res> implements $PointModelCopyWith<$Res> {
  factory _$PointModelCopyWith(
          _PointModel value, $Res Function(_PointModel) then) =
      __$PointModelCopyWithImpl<$Res>;
  @override
  $Res call({int? id, DispensaryModel? dispensary, int? point});

  @override
  $DispensaryModelCopyWith<$Res>? get dispensary;
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
    Object? dispensary = freezed,
    Object? point = freezed,
  }) {
    return _then(_PointModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      dispensary: dispensary == freezed
          ? _value.dispensary
          : dispensary // ignore: cast_nullable_to_non_nullable
              as DispensaryModel?,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PointModel implements _PointModel {
  _$_PointModel({this.id, this.dispensary, this.point});

  factory _$_PointModel.fromJson(Map<String, dynamic> json) =>
      _$$_PointModelFromJson(json);

  @override
  final int? id;
  @override
  final DispensaryModel? dispensary;
  @override
  final int? point;

  @override
  String toString() {
    return 'PointModel(id: $id, dispensary: $dispensary, point: $point)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PointModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.dispensary, dispensary) ||
                const DeepCollectionEquality()
                    .equals(other.dispensary, dispensary)) &&
            (identical(other.point, point) ||
                const DeepCollectionEquality().equals(other.point, point)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(dispensary) ^
      const DeepCollectionEquality().hash(point);

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
  factory _PointModel({int? id, DispensaryModel? dispensary, int? point}) =
      _$_PointModel;

  factory _PointModel.fromJson(Map<String, dynamic> json) =
      _$_PointModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  DispensaryModel? get dispensary => throw _privateConstructorUsedError;
  @override
  int? get point => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PointModelCopyWith<_PointModel> get copyWith =>
      throw _privateConstructorUsedError;
}
