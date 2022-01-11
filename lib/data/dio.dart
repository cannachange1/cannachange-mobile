import 'dart:developer';
import 'package:dio/dio.dart';

const String baseUrl =
    'https://61d587c92b4f730017a828e1.mockapi.io/api/v1/organisations/1/';

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
            return handler.next(options); //
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
