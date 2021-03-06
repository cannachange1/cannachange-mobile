import 'dart:convert';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cannachange/data/repository/personal_data_repository.dart';
import 'package:cannachange/helpers/storage_helper.dart';
import 'package:cannachange/model/client/client_model.dart';
import 'package:cannachange/model/dispensary/dispensary_model.dart';
import 'package:cannachange/model/point_model/point_model.dart';
import 'package:cannachange/model/user/user_model.dart';
import 'package:cannachange/store/store_state/store_state.dart';
import 'package:cannachange/ui/widgets/dialogs/reset_password_code_dialog.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../helpers/overlay_helper.dart';
import '../../model/aeropay_model/aeropay_model.dart';
import '../../router.gr.dart';

part 'personal_data_state.g.dart';

class PersonalDataState = _PersonalDataState with _$PersonalDataState;

abstract class _PersonalDataState with Store {
  final personalDataRepository = PersonalDataRepository();
  final StoreState storeState = StoreState();

  @observable
  ClientModel? clientModel;

  @observable
  bool isActivePushNotif = true;

  @observable
  AeroPayModel? aeroPayModel;

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

  @observable
  ObservableList<PointModel> consumerPointList = <PointModel>[].asObservable();

  @observable
  ObservableList<PointModel> dispensaryPointList =
      <PointModel>[].asObservable();

  @action
  void setDispensaryName(String value) {
    if (value.isNotEmpty) {
      dispensaryModel = dispensaryModel!.copyWith(businessName: value);
    }
  }

  @action
  void setConsumerName(String value) {
    if (value.isNotEmpty) {
      clientModel = clientModel!.copyWith(name: value);
    }
  }

  @action
  void setConsumerEmail(String value) {
    if (value.isNotEmpty) {
      clientModel = clientModel!.copyWith(email: value);
    }
  }

  @action
  void setDispensaryStartHours(String value) {
    if (value.isNotEmpty) {
      dispensaryModel = dispensaryModel!.copyWith(startHour: value);
    }
  }

  @action
  void setDispensaryEndHours(String value) {
    if (value.isNotEmpty) {
      dispensaryModel = dispensaryModel!.copyWith(endHour: value);
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
      dispensaryModel = dispensaryModel!.copyWith(address2: value);
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
  Future<void> pickConsumerImage() async {
    try {
      FilePickerResult? result =
          await FilePicker.platform.pickFiles(type: FileType.image);
      if (result != null) {
        clientSelectedImage = File(
          result.files.single.path!,
        );
        personalDataRepository.uploadProfilePic(clientSelectedImage!);
      } else {}
    } on DioError catch (e) {
      final Map<String, dynamic> map = jsonDecode(e.response!.data);
      showCustomOverlayNotification(color: Colors.red, text: map['title']);
    }
  }

  @action
  Future<void> pickDispensaryImage() async {
    try {
      FilePickerResult? result =
          await FilePicker.platform.pickFiles(type: FileType.image);
      if (result != null) {
        dispensarySelectedImage = File(
          result.files.single.path!,
        );
        personalDataRepository.uploadProfilePic(dispensarySelectedImage!);
      } else {}
    } on DioError catch (e) {
      final Map<String, dynamic> map = jsonDecode(e.response!.data);
      showCustomOverlayNotification(color: Colors.red, text: map['title']);
    }
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
    }
  }

  @action
  Future<void> redeemPoints(int id) async {
    try {
      storeState.changeState(StoreStates.loading);
      final res = await personalDataRepository.redeemPoints(id);
      storeState.changeState(StoreStates.success);
      return res;
    } on Exception catch (e) {
      storeState.changeState(StoreStates.error);
      storeState.setErrorMessage(e.toString());
    }
  }

  @action
  Future<void> addPoints(int points, String code) async {
    try {
      storeState.changeState(StoreStates.loading);
      await personalDataRepository.addPoints(points, code);
      storeState.setSuccessMessage('$points points added successfully');
    } on Exception catch (e) {
      storeState.changeState(StoreStates.error);
      storeState.setErrorMessage(e.toString());
    }
  }

  @action
  Future<void> approvePointsRedeem(int id) async {
    try {
      storeState.changeState(StoreStates.loading);
      final res = await personalDataRepository.approvePointsRedeem(id);
      storeState.setSuccessMessage('25 points redeemed successfully');
      storeState.changeState(StoreStates.success);
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

  @action
  Future<void> getPoints() async {
    try {
      storeState.changeState(StoreStates.loading);
      final res = await personalDataRepository.getPoints();
      consumerPointList.clear();
      consumerPointList.addAll(res!);
      storeState.changeState(StoreStates.success);
    } on Exception catch (e) {
      storeState.setErrorMessage(e.toString());
      storeState.changeState(StoreStates.error);
    }
  }


  Future<void> updateConsumer() async {
    try {
      storeState.changeState(StoreStates.loading);
      await personalDataRepository.updateUser(
        true,
        name: clientModel!.name,
        email: clientModel!.email,
      );
      storeState.changeState(StoreStates.success);
    } on Exception catch (e) {
      storeState.setErrorMessage(e.toString());
      storeState.changeState(StoreStates.error);
    }
  }

  Future<void> deleteAccount(String? token, BuildContext context) async {
    try {
      storeState.changeState(StoreStates.loading);
      await personalDataRepository.deleteUser(token);
      StorageHelper.removeAccessToken();
      storeState.changeState(StoreStates.success);
      AutoRouter.of(context).replace(const AuthorizationRoute());
    } on Exception catch (e) {
      storeState.setErrorMessage(e.toString());
      storeState.changeState(StoreStates.error);
    }
  }

  Future<void> cancelSubscription( BuildContext context) async {
    try {
      storeState.changeState(StoreStates.loading);
      await personalDataRepository.cancelSubscription();
      StorageHelper.removeAccessToken();
      storeState.changeState(StoreStates.success);
      AutoRouter.of(context).replace(const AuthorizationRoute());
    } on Exception catch (e) {
      storeState.setErrorMessage(e.toString());
      storeState.changeState(StoreStates.error);
    }
  }

  Future<void> updateDispensary() async {
    try {
      storeState.changeState(StoreStates.loading);
      await personalDataRepository.updateUser(
        false,
        name: dispensaryModel!.businessName,
        email: dispensaryModel!.email,
        address1: dispensaryModel!.address1,
        address2: dispensaryModel!.address2,
        endHour: dispensaryModel!.endHour,
        startHour: dispensaryModel!.startHour,
        shippingAddress1: dispensaryModel!.shippingAddress1,
        shippingAddress2: dispensaryModel!.shippingAddress2,
      );
      storeState.changeState(StoreStates.success);
    } on Exception catch (e) {
      storeState.setErrorMessage(e.toString());
      storeState.changeState(StoreStates.error);
    }
  }

  @action
  void resetValues() {
    clientModel = ClientModel();
    dispensaryModel = DispensaryModel();
    clientSelectedImage = null;
    dispensarySelectedImage = null;
  }
}
