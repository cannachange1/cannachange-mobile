import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cannachange/data/repository/personal_data_repository.dart';
import 'package:cannachange/model/client/client_model.dart';
import 'package:cannachange/model/dispensary/dispensary_model.dart';
import 'package:cannachange/model/user/user_model.dart';
import 'package:cannachange/store/store_state/store_state.dart';
import 'package:cannachange/ui/widgets/dialogs/reset_password_code_dialog.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'personal_data_state.g.dart';

class PersonalDataState = _PersonalDataState with _$PersonalDataState;

abstract class _PersonalDataState with Store {
  final personalDataRepository = PersonalDataRepository();
  final StoreState storeState = StoreState();

  @observable
  ClientModel? clientModel;

  @observable
  DispensaryModel? dispensaryModel = DispensaryModel(id: 2);

  Observable<UserModel?> _currentUser = Observable<UserModel?>(null);

  @computed
  UserModel get currentUser => _currentUser.value!;

  @computed
  set currentUser(currentUser) => _currentUser.value = currentUser;

  @observable
  String dispensaryName = '';

  @observable
  String dispensaryAddress = '';

  @observable
  String? dispensaryWorkingHours = '';

  @observable
  String? dispensaryEmail = '';

  @observable
  String? dispensaryPhone = '';

  @observable
  File? clientSelectedImage;

  @observable
  File? dispensarySelectedImage;

  @action
  void setDispensaryName(String value) {
    if (value.isNotEmpty) {
      dispensaryModel = dispensaryModel!.copyWith(businessName: value);
    }
  }

  @action
  void setDispensaryHours(String value) {
    if (value.isNotEmpty) {
      // dispensaryModel = dispensaryModel!.copyWith(w: value);
    }
  }

  @action
  void setDispensaryAddressLine1(String value) {
    if (value.isNotEmpty) {
      dispensaryModel = dispensaryModel!.copyWith(address1: value);
    }
  }

  @action
  void setDispensaryAddressLine2(String value) {
    if (value.isNotEmpty) {
      dispensaryModel = dispensaryModel!.copyWith(address1: value);
    }
  }

  @action
  void setDispensaryPhone(String value) {
    if (value.isNotEmpty) {
      dispensaryModel = dispensaryModel!.copyWith(phone: value);
    }
  }

  @action
  void setDispensaryEmail(String value) {
    if (value.isNotEmpty) {
      dispensaryModel = dispensaryModel!.copyWith(email: value);
    }
  }

  // @action
  // void setDispensaryPhone(String value) {
  //   if (value.isNotEmpty) {
  //     dispensaryModel = dispensaryModel!.copyWith(phone: value);
  //   }
  // }

  // @action
  // void setPhoneNumber(String value) {
  //   if (value.isNotEmpty) {
  //     user = user!.copyWith(login: value);
  //   }
  // }

  @observable
  String imageUrl = '';

  @action
  Future<void> pickImage() async {
    // try {
    //   FilePickerResult? result =
    //       await FilePicker.platform.pickFiles(type: FileType.image);
    //   if (result != null) {
    //     selectedImage = File(
    //       result.files.single.path!,
    //     );
    //     userRepository.uploadProfilePic(selectedImage!, result);
    //   } else {}
    // } on DioError catch (e) {
    //   final Map<String, dynamic> map = jsonDecode(e.response!.data);
    //   showCustomOverlayNotification(color: Colors.red, text: map['title']);
    // }
  }

  @action
  Future<void> forgetPasswordInit(String email, BuildContext context) async {
    try {
      storeState.changeState(StoreStates.loading);
      await personalDataRepository.forgetPasswordInit(email);
      storeState.changeState(StoreStates.success);
      showDialog(
          context: context,
          useRootNavigator: false,
          builder: (context) => const ResetPasswordCodeDialog()).then(
        (value) => AutoRouter.of(context).pop(),
      );
    } on Exception catch (e) {
      storeState.setErrorMessage(e.toString());
      storeState.changeState(StoreStates.error);
    }
  }

  @action
  Future<void> forgetPasswordFinish(String code, String newPassword) async {
    try {
      storeState.changeState(StoreStates.loading);
      final res =
          await personalDataRepository.forgetPasswordFinish(code, newPassword);
      return res;
    } on Exception catch (e) {
      storeState.changeState(StoreStates.error);
      storeState.setErrorMessage(e.toString());

      // rethrow;
    }
  }

  @action
  Future<void> changePassword(String oldPassword, String newPassword) async {
    try {
      storeState.changeState(StoreStates.loading);
      await personalDataRepository.changePassword(newPassword, oldPassword);
      storeState.setSuccessMessage('Password changed successfully');
      storeState.changeState(StoreStates.success);
    } on Exception catch (e) {
      storeState.setErrorMessage(e.toString());
      storeState.changeState(StoreStates.error);
    }
  }

// @action
// Future<void> getUser() async {
//   try {
//     loadingState.startLoading();
//     user = await userRepository.getUser();
//     if (user != null) {
//       StorageHelper.setUserName(user!.firstName);
//       StorageHelper.setUseSurname(user!.lastName);
//       StorageHelper.setPhoneNumber(user!.login);
//       StorageHelper.setEmail(user!.email);
//     }
//     loadingState.stopLoading();
//   } on DioError catch (e) {
//     final Map<String, dynamic> map = jsonDecode(e.response!.data);
//     showCustomOverlayNotification(color: Colors.red, text: map['title']);
//   } finally {
//     loadingState.stopLoading();
//   }
// }

// Future<void> updateUser() async {
//   try {
//     loadingState.startLoading();
//     await userRepository.updateUser(user!);
//     loadingState.stopLoading();
//   } on DioError catch (e) {
//     final Map<String, dynamic> map = jsonDecode(e.response!.data);
//     showCustomOverlayNotification(color: Colors.red, text: map['title']);
//   }
// }
}
