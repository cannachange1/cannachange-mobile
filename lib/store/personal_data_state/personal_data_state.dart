import 'dart:convert';
import 'dart:io';

import 'package:cannachange/data/repository/user_repository.dart';
import 'package:cannachange/helpers/overlay_helper.dart';
import 'package:cannachange/helpers/storage_helper.dart';
import 'package:cannachange/model/user/user_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'personal_data_state.g.dart';

class PersonalDataState = _PersonalDataState with _$PersonalDataState;

abstract class _PersonalDataState with Store {
  final UserRepository userRepository = UserRepository();
  //final loadingState = LoadingState();

  @observable
  UserModel? user;

  Observable<UserModel?> _currentUser = Observable<UserModel?>(null);

  @computed
  UserModel get currentUser => _currentUser.value!;

  @computed
  set currentUser(currentUser) => _currentUser.value = currentUser;

  @observable
  String gender = 'male';

  @observable
  DateTime? birthDate;

  @observable
  File? selectedImage;

  @action
  void setFirstName(String value) {
    if (value.isNotEmpty) {
      user = user!.copyWith(firstName: value);
    }
  }

  @action
  void setLastName(String value) {
    if (value.isNotEmpty) {
      user = user!.copyWith(lastName: value);
    }
  }

  @action
  void setEmail(String value) {
    if (value.isNotEmpty) {
      user = user!.copyWith(email: value);
    }
  }

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
  Future<void> changePassword(String oldPassword, String newPassword) async {
    // try {
    //   loadingState.startLoading();
    //   await userRepository.changePassword(newPassword, oldPassword);
    // } on DioError catch (e) {
    //   final Map<String, dynamic> map = jsonDecode(e.response!.data);
    //   showCustomOverlayNotification(color: Colors.red, text: map['title']);
    // } finally {
    //   loadingState.stopLoading();
    // }
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
