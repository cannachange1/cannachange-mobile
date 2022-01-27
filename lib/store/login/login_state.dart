import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:cannachange/constants/regexp.dart';
import 'package:cannachange/data/repository/authorization_repository.dart';
import 'package:cannachange/router.gr.dart';
import 'package:cannachange/store/store_state/store_state.dart';
import 'package:cannachange/ui/pages/main_navigation_consumer/consumer/consumer_dashboard_page.dart';
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
  final StoreState storeState = StoreState();

  @observable
  String? password = '';

  @observable
  bool isObscurePassword = true;

  @observable
  String email = '';

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
  void setEmail(String value) {
    email = value;
  }

  @action
  void setPassword(String value) {
    password = value;
  }

  @action
  void validateEmail(_) {
    final email = this.email.trim();
    if (email.isEmpty) {
      errors.email = "Email can't be empty";
    } else if (!RegExp(emailRegExp).hasMatch(email)) {
      errors.email = 'Invalid email address';
    } else {
      errors.email = null;
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
      reaction((_) => email, validateEmail),
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
    validateEmail(email);
  }

  void resetValues() {
    setPassword('');
    setEmail('');
  }

  @action
  Future<void> logInConsumer(BuildContext cont) async {
    storeState.changeState(StoreStates.loading);
    try {
      final res = await authorizationRepo.login(email, password!);
      // await StorageHelper.setToken(res.token);

      await AutoRouter.of(cont).replace(const ConsumerDashboardRoute());
    } on Exception catch (e) {
      storeState.setErrorMessage(e.toString());
      storeState.changeState(StoreStates.error);
    }
  }
}

class LoginStateErrors = _LoginStateErrors with _$LoginStateErrors;

abstract class _LoginStateErrors with Store {
  @observable
  String? password;

  @observable
  String? email;

  @action
  Future<void> resetValidationErrors() async {
    password = '';
    email = '';
  }

  @computed
  bool get hasErrors => email != null || password != null;
}
