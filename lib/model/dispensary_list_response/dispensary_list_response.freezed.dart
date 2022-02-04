// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dispensary_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DispensaryListResponseTearOff {
  const _$DispensaryListResponseTearOff();

  _DispensaryListResponse call(
      {required List<DispensaryModel> dispensaryList,
      required bool hasNextPage,
      required int allDispensaryQuantity}) {
    return _DispensaryListResponse(
      dispensaryList: dispensaryList,
      hasNextPage: hasNextPage,
      allDispensaryQuantity: allDispensaryQuantity,
    );
  }
}

/// @nodoc
const $DispensaryListResponse = _$DispensaryListResponseTearOff();

/// @nodoc
mixin _$DispensaryListResponse {
  List<DispensaryModel> get dispensaryList =>
      throw _privateConstructorUsedError;
  bool get hasNextPage => throw _privateConstructorUsedError;
  int get allDispensaryQuantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DispensaryListResponseCopyWith<DispensaryListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DispensaryListResponseCopyWith<$Res> {
  factory $DispensaryListResponseCopyWith(DispensaryListResponse value,
          $Res Function(DispensaryListResponse) then) =
      _$DispensaryListResponseCopyWithImpl<$Res>;
  $Res call(
      {List<DispensaryModel> dispensaryList,
      bool hasNextPage,
      int allDispensaryQuantity});
}

/// @nodoc
class _$DispensaryListResponseCopyWithImpl<$Res>
    implements $DispensaryListResponseCopyWith<$Res> {
  _$DispensaryListResponseCopyWithImpl(this._value, this._then);

  final DispensaryListResponse _value;
  // ignore: unused_field
  final $Res Function(DispensaryListResponse) _then;

  @override
  $Res call({
    Object? dispensaryList = freezed,
    Object? hasNextPage = freezed,
    Object? allDispensaryQuantity = freezed,
  }) {
    return _then(_value.copyWith(
      dispensaryList: dispensaryList == freezed
          ? _value.dispensaryList
          : dispensaryList // ignore: cast_nullable_to_non_nullable
              as List<DispensaryModel>,
      hasNextPage: hasNextPage == freezed
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      allDispensaryQuantity: allDispensaryQuantity == freezed
          ? _value.allDispensaryQuantity
          : allDispensaryQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DispensaryListResponseCopyWith<$Res>
    implements $DispensaryListResponseCopyWith<$Res> {
  factory _$DispensaryListResponseCopyWith(_DispensaryListResponse value,
          $Res Function(_DispensaryListResponse) then) =
      __$DispensaryListResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<DispensaryModel> dispensaryList,
      bool hasNextPage,
      int allDispensaryQuantity});
}

/// @nodoc
class __$DispensaryListResponseCopyWithImpl<$Res>
    extends _$DispensaryListResponseCopyWithImpl<$Res>
    implements _$DispensaryListResponseCopyWith<$Res> {
  __$DispensaryListResponseCopyWithImpl(_DispensaryListResponse _value,
      $Res Function(_DispensaryListResponse) _then)
      : super(_value, (v) => _then(v as _DispensaryListResponse));

  @override
  _DispensaryListResponse get _value => super._value as _DispensaryListResponse;

  @override
  $Res call({
    Object? dispensaryList = freezed,
    Object? hasNextPage = freezed,
    Object? allDispensaryQuantity = freezed,
  }) {
    return _then(_DispensaryListResponse(
      dispensaryList: dispensaryList == freezed
          ? _value.dispensaryList
          : dispensaryList // ignore: cast_nullable_to_non_nullable
              as List<DispensaryModel>,
      hasNextPage: hasNextPage == freezed
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      allDispensaryQuantity: allDispensaryQuantity == freezed
          ? _value.allDispensaryQuantity
          : allDispensaryQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DispensaryListResponse implements _DispensaryListResponse {
  _$_DispensaryListResponse(
      {required this.dispensaryList,
      required this.hasNextPage,
      required this.allDispensaryQuantity});

  @override
  final List<DispensaryModel> dispensaryList;
  @override
  final bool hasNextPage;
  @override
  final int allDispensaryQuantity;

  @override
  String toString() {
    return 'DispensaryListResponse(dispensaryList: $dispensaryList, hasNextPage: $hasNextPage, allDispensaryQuantity: $allDispensaryQuantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DispensaryListResponse &&
            (identical(other.dispensaryList, dispensaryList) ||
                const DeepCollectionEquality()
                    .equals(other.dispensaryList, dispensaryList)) &&
            (identical(other.hasNextPage, hasNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasNextPage, hasNextPage)) &&
            (identical(other.allDispensaryQuantity, allDispensaryQuantity) ||
                const DeepCollectionEquality().equals(
                    other.allDispensaryQuantity, allDispensaryQuantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dispensaryList) ^
      const DeepCollectionEquality().hash(hasNextPage) ^
      const DeepCollectionEquality().hash(allDispensaryQuantity);

  @JsonKey(ignore: true)
  @override
  _$DispensaryListResponseCopyWith<_DispensaryListResponse> get copyWith =>
      __$DispensaryListResponseCopyWithImpl<_DispensaryListResponse>(
          this, _$identity);
}

abstract class _DispensaryListResponse implements DispensaryListResponse {
  factory _DispensaryListResponse(
      {required List<DispensaryModel> dispensaryList,
      required bool hasNextPage,
      required int allDispensaryQuantity}) = _$_DispensaryListResponse;

  @override
  List<DispensaryModel> get dispensaryList =>
      throw _privateConstructorUsedError;
  @override
  bool get hasNextPage => throw _privateConstructorUsedError;
  @override
  int get allDispensaryQuantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DispensaryListResponseCopyWith<_DispensaryListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
