import 'dart:io';

import 'package:cannachange/data/exceptions/dio_error_codes.dart';
import 'package:cannachange/data/exceptions/general_exceptions.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get_it/get_it.dart';

class PersonalDataRepository {
  final dio = GetIt.I<Dio>();

  // Future<UserModel?> getUser() async {
  //   final response = await dio.get('profile');
  //   return UserModel.fromJson(response.data);
  // }
  //
  // Future<void> updateUser(UserModel userModel) async {
  //   try {
  //     await dio.put(
  //       'profile',
  //       data: userModel.toJson(),
  //     );
  //   } on DioError catch (e) {}
  // }

  Future<void> uploadProfilePic(
      File image, FilePickerResult filePickerResult) async {
    String fileName = image.path.split('/').last;
    final res = await dio.post(
      'avatar',
      data: {"name": fileName, "extension": 'jpeg'},
    );
    if (res.data['link'] != null) {
      await dio.put(res.data['link'],
          data: image.openRead(),
          options: Options(contentType: "image/jpeg", headers: {
            "Content-Length": image.lengthSync(),
            "noToken": true
          }));
    }
  }

  ///////////**********/////////////

  Future<void> changePassword(String newPassword, String oldPassword) async {
    try {
      await dio.post(
        'mobile/change-password',
        data: {"currentPassword": oldPassword, "newPassword": newPassword},
      );
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

  ///////////**********/////////////

  Future<void> forgetPasswordInit(
    String email,
  ) async {
    try {
      await dio.post(
        'mobile/reset-password/init',
        data: {"email": email},
      );
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

  ///////////**********/////////////

  Future<void> forgetPasswordFinish(String code, String newPassword) async {
    try {
      await dio.post(
        'mobile/reset-password/finish',
        data: {
          "key": code,
          "newPassword": newPassword,
        },
      );
    } on DioError catch (e) {
      if (e.error is SocketException || e.type == DioErrorType.connectTimeout) {
        throw NoInternetException();
      }
      if (is400StatusCodeFamily(e.error)) {
        if (e.error == DioError401) {
          throw UnauhtorizedException();
        }
        print('aaaaa ${e.response!.data!['title']}');
        throw BadRequestException(
          message: e.response!.data!['title'],
        );
      }
      if (is500StatusCodeFamily(e.error)) {
        throw ServerException(
          message: e.response!.data!['title'],
        );
      }
    } catch (e) {
      throw UnknownException();
    }
  }

///////////**********/////////////

// Future<List<UserRepository>> getUsers() async {
//   try {
//     final response = await dio.get(
//       'drivers',
//     );
//     final List driversList = response.data;
//     return driversList.map((json) => UserModel.fromJson(json)).toList();
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
