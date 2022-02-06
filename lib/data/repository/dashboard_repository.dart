import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../model/scan_response_model/scan_response_model.dart';
import '../exceptions/general_exceptions.dart';

class DashboardRepository {
  final dio = GetIt.I<Dio>();

///////////**********/////////////

  Future<ScanResponseModel?> scanQr(String qr) async {
    try {
      final res = await dio.get(
        'mobile/qrCode?qrCode=$qr',
      );
      return ScanResponseModel.fromJson(res.data);
    } on DioError catch (e) {
      handleError(e);
    }
  }

///////////**********/////////////
}
