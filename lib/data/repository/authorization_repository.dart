import 'dart:async';
import 'package:cannachange/data/exceptions/general_exceptions.dart';
import 'package:cannachange/model/login_response/login_response_model.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../model/register_response/register_response.dart';

class AuthenticationRepo {
  final dio = GetIt.I<Dio>();

  Future<LoginResponseModel?> login(String email, String password) async {
    try {
      final res = await dio.post('mobile/login', data: {
        'email': email,
        'password': password,
        "rememberMe": true,
      });
      return LoginResponseModel.fromJson(res.data);
    } on DioError catch (e) {
      handleError(e);
    }
    return null;
  }

  Future<void> registerConsumer(Map<String, String> signUpRequestModel) async {
    try {
      await dio.post('mobile/consumer?sendSMS=true', data: signUpRequestModel);
    } on DioError catch (e) {
      handleError(e);
    }
  }

  Future<void> registerDispensary(
      Map<String, String> signUpRequestModel) async {
    try {
      await dio.post('mobile/dispensary?sendSMS=true',
          data: signUpRequestModel);
    } on DioError catch (e) {
      handleError(e);
    }
  }

  Future<RegisterResponse?> sendOTPCode(
      String code, String email, String password) async {
    try {
      final res = await dio.put('mobile/activate',
          data: {"key": code, "email": email, "password": password});
      return RegisterResponse.fromJson(res.data);
    } on DioError catch (e) {
      handleError(e);
    }
  }

  Future<void> resendCode(String phoneNumber) async {
    try {
      await dio.put('mobile/resend?sendSMS=true', data: {
        "phoneNumber": phoneNumber,
      });
    } on DioError catch (e) {
      handleError(e);
    }
  }
}
