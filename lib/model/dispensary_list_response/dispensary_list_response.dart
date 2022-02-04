import 'package:freezed_annotation/freezed_annotation.dart';

import '../dispensary/dispensary_model.dart';

part 'dispensary_list_response.freezed.dart';

@freezed
class DispensaryListResponse with _$DispensaryListResponse {
  factory DispensaryListResponse({
    required List<DispensaryModel> dispensaryList,
    required bool hasNextPage,
    required int allDispensaryQuantity,
  }) = _DispensaryListResponse;
}
