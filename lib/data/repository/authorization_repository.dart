import 'dart:async';
import 'package:cannachange/data/exceptions/general_exceptions.dart';
import 'package:cannachange/model/login_response/login_response_model.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class AuthenticationRepo {
  final dio = GetIt.I<Dio>();

  Future<LoginResponseModel?> loginDispensary(
      String email, String password) async {
    try {
      final res = await dio.post('authenticate', data: {
        'username': email,
        'password': password,
        "rememberMe": true,
      });
      return LoginResponseModel.fromJson(res.data);
    } on DioError catch (e) {
      handleError(e);
    } catch (e) {
      throw UnknownException();
    }
  }

  Future<LoginResponseModel?> loginConsumer(
      String email, String password) async {
    try {
      final res = await dio.post('authenticate', data: {
        'username': email,
        'password': password,
        "rememberMe": true,
      });
      return LoginResponseModel.fromJson(res.data);
    } on DioError catch (e) {
      handleError(e);
    } catch (e) {
      throw UnknownException();
    }
  }

  Future<void> registerConsumer(Map<String, String> signUpRequestModel) async {
    try {
      await dio.post('mobile/consumer?sendSMS=true', data: signUpRequestModel);
    } on DioError catch (e) {
      handleError(e);
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
      handleError(e);
    } catch (e) {
      throw UnknownException();
    }
  }

  Future<String?> sendOTPCode(
      String code, String email, String password) async {
    try {
      final res = await dio.put('mobile/activate',
          data: {"key": code, "email": email, "password": password});
      return res.data['result']['token'];
    } on DioError catch (e) {
      handleError(e);
    } catch (e) {
      throw UnknownException();
    }
  }
}
