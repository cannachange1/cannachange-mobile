import 'dart:developer';
import 'dart:io';
import 'package:cannachange/helpers/storage_helper.dart';
import 'package:dio/dio.dart';

const String baseUrl = 'http://cannachange-environ.eba-ii32qd3q.us-east-2.elasticbeanstalk.com/api/';

Dio initDio() {
  final options = BaseOptions(
    connectTimeout: 30000,
    receiveTimeout: 30000,
    baseUrl: baseUrl,
  );
  Dio dio = Dio(options);
  return dio
    ..interceptors.addAll(
      <Interceptor>[
        LogInterceptor(
            requestBody: true,
            responseBody: true,
            logPrint: (data) {
              log(data.toString(), name: 'DIO');
            }),
        InterceptorsWrapper(
          onRequest: (options, handler) async {
            final token = await StorageHelper.getToken();
            if (token != null && token.isNotEmpty) {
              options.headers.putIfAbsent(
                  HttpHeaders.authorizationHeader, () => 'Bearer $token');
              //    print('${HttpHeaders.authorizationHeader} Bearer $token');
            }
            return handler.next(options); //continue
          },
          onResponse: (response, handler) {
            return handler.next(response); // continue
          },
          onError: (error, handler) async {
            return handler.next(error); //continue
          },
        ),
      ],
    );
}
