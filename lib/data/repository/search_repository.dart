import 'package:cannachange/model/dispensary/dispensary_model.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../model/dispensary_list_response/dispensary_list_response.dart';

class SearchRepository {
  final dio = GetIt.I<Dio>();

  Future<DispensaryListResponse> getDispensaries(String searchKey, int pageKey) async {
    dynamic res;
    try {
      res = await dio.get(
        'mobile/dispensaries?page=$pageKey&searchKey=$searchKey',
      );
      final hasNextPage = res.headers.map['hasnextpage']!.first;
      final totalCount = res.headers.map['x-total-count']!.first;
      final List<DispensaryModel> list = res.data
          .map((i) => DispensaryModel.fromJson(i))
          .toList()
          .cast<DispensaryModel>();

      final dealListResponse = DispensaryListResponse(
          dispensaryList: list,
          hasNextPage: hasNextPage,
          allDispensaryQuantity: int.parse(totalCount));
      return dealListResponse;
    } on DioError catch (e) {
      return Future.error(e.response!.data['message']);
    }
  }
}
