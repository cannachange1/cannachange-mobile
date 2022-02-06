import 'dart:io';
import 'dart:typed_data';

import 'package:cannachange/data/exceptions/dio_error_codes.dart';
import 'package:cannachange/data/exceptions/general_exceptions.dart';
import 'package:cannachange/model/point_model/point_model.dart';
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

  Future<void> uploadProfilePic(File image) async {
    var formData = FormData.fromMap(
      {
        'img': await MultipartFile.fromFile(
          image.path,
        ),
      },
    );
    await dio.post(
      'mobile/avatar',
      data: formData,
    );
  }

  ///////////**********/////////////

  Future<void> changePassword(String newPassword, String oldPassword) async {
    try {
      await dio.post(
        'mobile/change-password',
        data: {"currentPassword": oldPassword, "newPassword": newPassword},
      );
    } on DioError catch (e) {
      handleError(e);
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
      handleError(e);
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
      handleError(e);
    }
  }

  ///////////**********/////////////

  Future<void> deleteUser(String? token) async {
    try {
      await dio.delete(
        'mobile/profile',
        data: {
          "token": token,
        },
      );
    } on DioError catch (e) {
      handleError(e);
    }
  }

  ///////////**********/////////////

  Future<void> redeemPoints(
    int id,
  ) async {
    try {
      await dio.get(
        'mobile/points/$id/redeem',
      );
    } on DioError catch (e) {
      handleError(e);
    }
  }

  ///////////**********/////////////

  Future<List<PointModel>?> getPoints() async {
    try {
      final res = await dio.get(
        'mobile/points',
      );
      final List<PointModel> list = res.data
          .map((i) => PointModel.fromJson(i))
          .toList()
          .cast<PointModel>();
      return list;
    } on DioError catch (e) {
      handleError(e);
    }
  }

  ///////////**********/////////////

  Future<void> updateUser(bool isConsumer,
      {String? name,
      String? email,
      String? address1,
      String? address2,
      String? startHour,
      String? endHour,
      String? shippingAddress1,
      String? shippingAddress2}) async {
    try {
      dynamic data;

      if (isConsumer) {
        data = {
          "name": name,
          "email": email,
        };
      } else {
        data = {
          "email": email,
          "name": name,
          "address1": address1,
          "address2": address2,
          "startHour": startHour,
          "endHour": endHour,
          "shippingAddress1": shippingAddress1,
          "shippingAddress2": shippingAddress2,
        };
      }
      await dio.put('mobile/profile', data: data);
    } on DioError catch (e) {
      handleError(e);
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
