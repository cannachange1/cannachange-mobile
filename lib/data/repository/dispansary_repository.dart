import 'dart:io';

import 'package:cannachange/data/exceptions/dio_error_codes.dart';
import 'package:cannachange/data/exceptions/general_exceptions.dart';
import 'package:cannachange/model/dispensary/dispensary_model.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class DispensaryRepository {
  final dio = GetIt.I<Dio>();

  Future<List<DispensaryModel>> getSessions() async {
    try {
      final response = await dio.get(
        'sessions',
      );
      final List sessions = response.data['result'];
      return sessions.map((json) => DispensaryModel.fromJson(json)).toList();
    } on DioError catch (e) {
      if (e.error is SocketException || e.type == DioErrorType.connectTimeout) {
        throw NoInternetException();
      }
      if (is400StatusCodeFamily(e.error)) {
        if (e.error == DioError401) {
          throw UnauhtorizedException();
        }
        throw BadRequestException(
          message: e.response!.data!['message'],
        );
      }
      if (is500StatusCodeFamily(e.error)) {
        throw ServerException();
      }
      throw UnknownException();
    }
  }
}
