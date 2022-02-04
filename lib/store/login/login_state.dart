import 'package:auto_route/auto_route.dart';
import 'package:cannachange/constants/regexp.dart';
import 'package:cannachange/data/repository/authorization_repository.dart';
import 'package:cannachange/router.gr.dart';
import 'package:cannachange/store/personal_data_state/personal_data_state.dart';
import 'package:cannachange/store/store_state/store_state.dart';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

import '../../helpers/storage_helper.dart';
import '../../model/user/user_model.dart';

part 'login_state.g.dart';

class LoginState = _LoginState with _$LoginState;

abstract class _LoginState with Store {
  final authorizationRepo = AuthenticationRepo();
  final LoginStateErrors errors = LoginStateErrors();
  final personalDataState = GetIt.I<PersonalDataState>();
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
  Future<void> logIn(BuildContext cont) async {
    try {
      storeState.changeState(StoreStates.loading);
      final res = await authorizationRepo.login(email, password!);
      await StorageHelper.setToken(res!.token);
      if (res.role == 'DISPENSARY') {
        print('aaaaaaaa ${res.dispensary.toString()}');
        personalDataState.dispensaryModel = res.dispensary!;
        print('aaaaaaa ${personalDataState.dispensaryModel.toString()}');
        //personalDataState.dispensaryName = res.dispensary!.name!;
        // personalDataState.dispensaryAddress =
        //     res.dispensary!.address1! + ' ' + res.dispensary!.address2!;
        // personalDataState.dispensaryWorkingHours =
        //     res.dispensary!.startHour! + ' - ' + res.dispensary!.endHour!;

        await AutoRouter.of(cont).replace(const DashboardRoute());
      } else {
        personalDataState.clientModel = res.consumer;
        personalDataState.consumerPointList.clear();
        personalDataState.consumerPointList.addAll(res.points!);
        await AutoRouter.of(cont).replace(const ConsumerDashboardRoute());
      }
      storeState.changeState(StoreStates.success);
    } on Exception catch (e) {
      storeState.changeState(StoreStates.error);
      storeState.setErrorMessage(e.toString());
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
