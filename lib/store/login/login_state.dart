import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:cannachange/data/repository/authorization_repository.dart';
import 'package:dio/dio.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../helpers/overlay_helper.dart';
import '../../helpers/storage_helper.dart';
import '../../model/user/user_model.dart';


part 'login_state.g.dart';

class LoginState = _LoginState with _$LoginState;

abstract class _LoginState with Store {
  final authorizationRepo = AuthenticationRepo();
  final LoginStateErrors errors = LoginStateErrors();

  @observable
  String? password = '';

  @observable
  bool isObscurePassword = true;

  @observable
  String phoneNumber = '';

  @observable
  UserModel? _currentUser;

  @computed
  UserModel get currentUser => _currentUser!;

  @computed
  set currentUser(currentUser) => _currentUser = currentUser;

  @action
  void changeObscure() {
    isObscurePassword = !isObscurePassword;
  }

  @action
  void setPhoneNumber(String value) {
    phoneNumber = value;
  }

  @action
  void setPassword(String value) {
    password = value;
  }

  @action
  void validatePhone(_) {
    final phone = phoneNumber.trim();
    if (phone.isEmpty) {
      errors.phoneNumber = "Phone number can't be empty";
    } else if (!phone.startsWith('+')) {
      errors.phoneNumber = 'Phone number should start with "+"';
    } else {
      errors.phoneNumber = null;
    }
  }

  @action
  void validatePassword(_) {
    final password = this.password!.trim();
    if (password.isEmpty || password.length < 6) {
      errors.password = 'Too short (more than 5)';
    } else {
      errors.password = null;
    }
  }

  late List<ReactionDisposer> _disposers;

  void setupValidations() {
    _disposers = [
      reaction((_) => phoneNumber, validatePhone),
      reaction((_) => password, validatePassword)
    ];
  }

  void dispose() {
    for (final d in _disposers) {
      d();
    }
  }

  void validateAll() {
    validatePassword(password);
    validatePhone(phoneNumber);
  }

  void resetValues() {
    setPassword('');
    setPhoneNumber('');
  }


  @action
  Future<void> logIn(BuildContext cont) async {
  //  try {
  //     final res = await authorizationRepo.login(
  //         phoneNumber.replaceAll('+', '00'), password!);
  //     await StorageHelper.setToken(res.token);
  //
  //     // WidgetsBinding.instance!.addPostFrameCallback((_) async {
  //     //
  //     // });
  //     //todo uncomment
  //     if (res.status != describeEnum(PaymentStatus.PAID) &&
  //         res.status != describeEnum(PaymentStatus.TRIAL)) {
  //       print ('stttaaatttuuussss ${describeEnum(PaymentStatus.PAID)}');
  //       await showDialog(
  //           context: cont,
  //           useRootNavigator: false,
  //           barrierColor: AppColors.settingsBackground.withOpacity(.8),
  //           builder: (ctx) => PromoteSubscriptionDialog(parentC: cont,));
  //     } else {
  //       await AutoRouter.of(cont).replace(const DashboardRoute());
  //     }
  //   } on DioError catch (e) {
  //     final Map<String, dynamic> map = jsonDecode(e.response!.data);
  //     errors.resetValidationErrors();
  //     loadingState.stopLoading();
  //     showCustomOverlayNotification(
  //       color: Colors.red,
  //       text: map['detail'],
  //     );
  //     await StorageHelper.removeAccessToken();
  //   } finally {
  //     loadingState.stopLoading();
  //   }
   }
}

class LoginStateErrors = _LoginStateErrors with _$LoginStateErrors;

abstract class _LoginStateErrors with Store {
  @observable
  String? password;

  @observable
  String? phoneNumber;

  @action
  Future<void> resetValidationErrors() async {
    phoneNumber = '';
    password = '';
  }

  @computed
  bool get hasErrors => phoneNumber != null || password != null;
}
