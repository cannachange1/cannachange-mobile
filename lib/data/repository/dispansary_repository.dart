import 'dart:io';

import 'package:cannachange/data/exceptions/dio_error_codes.dart';
import 'package:cannachange/data/exceptions/general_exceptions.dart';
import 'package:cannachange/model/dispensary/dispensary_model.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class DispensaryRepository {
  final dio = GetIt.I<Dio>();



  ///////////**********/////////////

  Future<void> addPoints(
    int point,
    String code,
  ) async {
    try {
      await dio.put(
        'mobile/points',
        data: {"point": point, "code": code},
      );
    } on DioError catch (e) {
      handleError(e);
    } catch (e) {
      throw UnknownException();
    }
  }


  ///////////**********/////////////

  Future<void> redeemPoints(
    int point,
    String code,
  ) async {
    try {
      await dio.put(
        'mobile/points/redeem',
        data: {"point": point, "code": code},
      );
    } on DioError catch (e) {
      handleError(e);
    } catch (e) {
      throw UnknownException();
    }
  }


  ///////////**********/////////////

  Future<void> getClientFromQr(
    String code,
  ) async {
    try {
      await dio.get(
        'mobile/qrCode?code=$code',
      );
    } on DioError catch (e) {
      handleError(e);
    } catch (e) {
      throw UnknownException();
    }
  }

// Future<List<DispensaryModel>> getSessions() async {
//   try {
//     final response = await dio.get(
//       'sessions',
//     );
//     final List sessions = response.data['result'];
//     return sessions.map((json) => DispensaryModel.fromJson(json)).toList();
//   } on DioError catch (e) {
//     if (e.error is SocketException || e.type == DioErrorType.connectTimeout) {
//       throw NoInternetException();
//     }
//     if (is400StatusCodeFamily(e.error)) {
//       if (e.error == DioError401) {
//         throw UnauhtorizedException();
//       }
//       throw BadRequestException(
//         message: e.response!.data!['message'],
//       );
//     }
//     if (is500StatusCodeFamily(e.error)) {
//       throw ServerException();
//     }
//     throw UnknownException();
//   }
// }
}
