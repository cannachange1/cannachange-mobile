import 'dart:async';
import 'package:cannachange/model/login_response/login_response_model.dart';
import 'package:cannachange/model/register_response/register_response.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class AuthenticationRepo {
  final dio = GetIt.I<Dio>();


  Future<LoginResponseModel> login(String email, String password) async {
    final res = await dio.post('authenticate', data: {
      'username': email,
      'password': password,
      "rememberMe": true,
    });
    return LoginResponseModel.fromJson(res.data);
  }


  Future<void> register(Map<String, String> signUpRequestModel) async {
    await dio.post('register?sendSMS=true', data: signUpRequestModel);
  }

  Future<void> sendOTPCode(String code) async {
    await dio.put('activate', data: {"key": code});
  }




}
