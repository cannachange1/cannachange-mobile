import 'dart:async';
import 'dart:io';
import 'package:cannachange/data/exceptions/dio_error_codes.dart';
import 'package:cannachange/data/exceptions/general_exceptions.dart';
import 'package:cannachange/model/login_response/login_response_model.dart';
import 'package:cannachange/model/register_response/register_response.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class AuthenticationRepo {
  final dio = GetIt.I<Dio>();

  Future<LoginResponseModel> loginDispensary(
      String email, String password) async {
    final res = await dio.post('authenticate', data: {
      'username': email,
      'password': password,
      "rememberMe": true,
    });
    return LoginResponseModel.fromJson(res.data);
  }

  Future<LoginResponseModel> loginConsumer(
      String email, String password) async {
    final res = await dio.post('authenticate', data: {
      'username': email,
      'password': password,
      "rememberMe": true,
    });
    return LoginResponseModel.fromJson(res.data);
  }

  Future<void> registerConsumer(Map<String, String> signUpRequestModel) async {
    try {
      await dio.post('mobile/consumer?sendSMS=true', data: signUpRequestModel);
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
    } catch (e) {
      throw UnknownException();
    }
  }

  Future<void> registerDispensary(
      Map<String, String> signUpRequestModel) async {
    try {
      await dio.post('mobile/dispensary?sendSMS=true',
          data: signUpRequestModel);
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
    } catch (e) {
      throw UnknownException();
    }
  }

  Future<void> sendOTPCode(String code) async {
    await dio.put('activate', data: {"key": code});
  }
}
