import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:cannachange/data/repository/authorization_repository.dart';
import 'package:cannachange/helpers/storage_helper.dart';
import 'package:cannachange/store/store_state/store_state.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

import '../../constants/regexp.dart';
import '../../router.gr.dart';
import '../personal_data_state/personal_data_state.dart';

part 'registration_state.g.dart';

class RegistrationState = _RegistrationState with _$RegistrationState;

abstract class _RegistrationState with Store {
  final authorizationRepo = AuthenticationRepo();
  List<ReactionDisposer> _dispensaryDisposers = [];
  List<ReactionDisposer> _consumerDisposers = [];
  final personalDataState = GetIt.I<PersonalDataState>();

  final StoreState storeState = StoreState();
  final RegistrationStateErrors errors = RegistrationStateErrors();

  @observable
  String? dispensaryName = '';
  @observable
  String? consumerName = '';

  ///////////////////////////////////

  @observable
  String? dispensaryShippingAddress1 = '';
  @observable
  String? dispensaryShippingAddress2 = '';
  @observable
  String? dispensaryAddress1 = '';
  @observable
  String? dispensaryAddress2 = '';
  @observable
  String? dispensaryStartHours;
  @observable
  String? dispensaryEndHours;

  ///////////////////////////////////

  @observable
  String? consumerEmail = '';
  @observable
  String? dispensaryEmail = '';

  ///////////////////////////////////

  @observable
  String? consumerPhoneNumber = '';
  @observable
  String? dispensaryPhoneNumber = '';

  ///////////////////////////////////

  @observable
  String? consumerPassword = '';
  @observable
  String? dispensaryPassword = '';

  ///////////////////////////////////

  @observable
  String? consumerPasswordConfirmation = '';
  @observable
  String? dispensaryPasswordConfirmation = '';

  ///////////////////////////////////

  @observable
  bool hasConsumerObscurePassword = true;
  @observable
  bool hasDispensaryObscurePassword = true;

  ///////////////////////////////////

  @observable
  bool agreedToDispensaryTermsAndConditions = false;
  @observable
  bool agreedToConsumerTermsAndConditions = false;
  @observable
  bool isShippingAddressTheSame = false;

  ///////////////////////////////////

  @observable
  String? otp = '';

  @observable
  bool agreeToTerms = false;

  @action
  void setAgreedToDispensaryTermsAndConditions() {
    agreedToDispensaryTermsAndConditions =
        !agreedToDispensaryTermsAndConditions;
  }

  @action
  void setAgreedToShipSameAddress() {
    isShippingAddressTheSame = !isShippingAddressTheSame;
  }

  @action
  void setAgreedToConsumerTermsAndConditions() {
    agreedToConsumerTermsAndConditions = !agreedToConsumerTermsAndConditions;
  }

  @action
  Future<void> activateAccount(
      bool isDispensary, BuildContext context, String code) async {
    storeState.changeState(StoreStates.loading);
    try {
      final res = await authorizationRepo.sendOTPCode(
          code,
          isDispensary ? dispensaryEmail! : consumerEmail!,
          isDispensary ? dispensaryPassword! : consumerPassword!);
      StorageHelper.setToken(res!.token);
      if (isDispensary) {
        personalDataState.dispensaryModel = res.dispensary;
        AutoRouter.of(context).push(const DashboardRoute());
      } else {
        personalDataState.clientModel = res.consumer;
        AutoRouter.of(context).push(const ConsumerDashboardRoute());
      }
      storeState.changeState(StoreStates.success);
    } on Exception catch (e) {
      storeState.setErrorMessage(e.toString());
      storeState.changeState(StoreStates.error);
    }
  }

  @action
  Future<void> registerDispensary(BuildContext context) async {
    storeState.changeState(StoreStates.loading);
    try {
      if (isShippingAddressTheSame) {
        await authorizationRepo.registerDispensary({
          "name": dispensaryName!,
          "password": dispensaryPassword!,
          "phoneNumber": dispensaryPhoneNumber!,
          "email": dispensaryEmail!.trim(),
          "startHour": dispensaryStartHours!,
          "endHour": dispensaryEndHours!,
          "address1": dispensaryAddress1!,
          "address2": dispensaryAddress2!,
        });
      } else {
        await authorizationRepo.registerDispensary({
          "name": dispensaryName!,
          "password": dispensaryPassword!,
          "phoneNumber": dispensaryPhoneNumber!,
          "email": dispensaryEmail!.trim(),
          "startHour": dispensaryStartHours!,
          "endHour": dispensaryEndHours!,
          "address1": dispensaryAddress1!,
          "address2": dispensaryAddress2!,
          "shippingAddress1": dispensaryShippingAddress1!,
          "shippingAddress2": dispensaryShippingAddress2!,
        });
      }
      storeState.changeState(StoreStates.success);
      // resetDispensaryValidationErrors();
      AutoRouter.of(context).replace(VerifyOtpCodeRoute(isDispensary: true));
    } on Exception catch (e) {
      AutoRouter.of(context).pop();
      storeState.setErrorMessage(e.toString());
      storeState.changeState(StoreStates.error);
    }
  }

  @action
  Future<void> registerConsumer(BuildContext context) async {
    storeState.changeState(StoreStates.loading);
    try {
      await authorizationRepo.registerConsumer({
        "name": consumerName!,
        "password": consumerPassword!,
        "phoneNumber": consumerPhoneNumber!,
        "email": consumerEmail!.trim(),
      });

      storeState.changeState(StoreStates.success);
      // resetDispensaryValidationErrors();
      AutoRouter.of(context).replace(VerifyOtpCodeRoute());
    } on Exception catch (e) {
      storeState.setErrorMessage(e.toString());
      storeState.changeState(StoreStates.error);
    }
  }

  /////////////*** NAME  ***//////////////////////

  @action
  void validateConsumerName(_) {
    final consumerName = this.consumerName!.trim();
    if (consumerName.isEmpty) {
      errors.consumerName = "Name can't be empty";
    } else {
      errors.consumerName = null;
    }
  }

  @action
  void validateDispensaryName(_) {
    final dispensaryName = this.dispensaryName!.trim();
    if (dispensaryName.isEmpty) {
      errors.dispensaryName = "Name can't be empty";
    } else {
      errors.dispensaryName = null;
    }
  }

  /////////////*** NAME  ***//////////////////////
  /////////////*** PASSWORD  ***//////////////////////

  @action
  void validateConsumerPassword(_) {
    final consumerPassword = this.consumerPassword!.trim();
    if (consumerPassword.length < 6) {
      errors.consumerPassword = 'Too short (more than 5)';
    } else {
      errors.consumerPassword = null;
    }
  }

  @action
  void validateDispensaryPassword(_) {
    final dispensaryPassword = this.dispensaryPassword!.trim();
    if (dispensaryPassword.length < 6) {
      errors.dispensaryPassword = 'Too short (more than 5)';
    } else {
      errors.dispensaryPassword = null;
    }
  }

  /////////////*** PASSWORD  ***//////////////////////
  /////////////*** CONFIRM PASSWORD  ***//////////////////////

  @action
  void validateConsumerConfirmPassword(_) {
    if (consumerPasswordConfirmation!.trim().length < 6) {
      errors.consumerConfirmPassword = 'Too short (more than 5)';
    } else if (consumerPasswordConfirmation!.trim() != consumerPassword) {
      errors.consumerConfirmPassword = 'Password is not identical';
    } else {
      errors.consumerConfirmPassword = null;
    }
  }

  @action
  void validateDispensaryConfirmPassword(_) {
    if (dispensaryPasswordConfirmation!.trim().length < 6) {
      errors.dispensaryConfirmPassword = 'Too short (more than 5)';
    } else if (dispensaryPasswordConfirmation!.trim() != dispensaryPassword) {
      errors.dispensaryConfirmPassword = 'Password is not identical';
    } else {
      errors.dispensaryConfirmPassword = null;
    }
  }

  /////////////*** CONFIRM PASSWORD  ***//////////////////////
  /////////////*** EMAIL  ***//////////////////////

  @action
  void validateConsumerEmail(_) {
    final consumerEmail = this.consumerEmail!.trim();
    if (consumerEmail.isEmpty) {
      errors.consumerEmail = "Email can't be empty";
    } else if (!RegExp(emailRegExp).hasMatch(consumerEmail)) {
      errors.consumerEmail = 'Invalid email address';
    } else {
      errors.consumerEmail = null;
    }
  }

  @action
  void validateDispensaryEmail(_) {
    final dispensaryEmail = this.dispensaryEmail!.trim();
    if (dispensaryEmail.isEmpty) {
      errors.dispensaryEmail = "Email can't be empty";
    } else if (!RegExp(emailRegExp).hasMatch(dispensaryEmail)) {
      errors.dispensaryEmail = 'Invalid email address';
    } else {
      errors.dispensaryEmail = null;
    }
  }

  /////////////*** EMAIL  ***//////////////////////
  /////////////*** PHONE NUMBER  ***//////////////////////

  @action
  void validateConsumerPhone(_) {
    final consumerPhone = consumerPhoneNumber!.trim();
    if (consumerPhone.isEmpty) {
      errors.consumerPhone = "Phone number can't be empty";
    } else if (!consumerPhone.startsWith('+')) {
      errors.consumerPhone = 'Phone number should start with "+"';
    } else {
      errors.consumerPhone = null;
    }
  }

  @action
  void validateDispensaryPhone(_) {
    final dispensaryPhone = dispensaryPhoneNumber!.trim();
    if (dispensaryPhone.isEmpty) {
      errors.dispensaryPhone = "Phone number can't be empty";
    } else if (!dispensaryPhone.startsWith('+')) {
      errors.dispensaryPhone = 'Phone number should start with "+"';
    } else {
      errors.dispensaryPhone = null;
    }
  }

  /////////////*** PHONE NUMBER  ***//////////////////////
  /////////////*** DISPENSARY PRIVATE  ***//////////////////////

  @action
  void validateDispensaryAddress(_) {
    final dispensaryAddress = dispensaryAddress1!.trim();
    if (dispensaryAddress.isEmpty) {
      errors.dispensaryAddress = "Dispensary address can't be empty";
    } else {
      errors.dispensaryAddress = null;
    }
  }

  @action
  void validateDispensaryStartHours(_) {
    final dispensaryHours = dispensaryStartHours!.trim();
    if (dispensaryHours.isEmpty) {
      errors.dispensaryStartHours = "Dispensary hours can't be empty";
    } else {
      errors.dispensaryStartHours = null;
    }
  }

  @action
  void validateDispensaryEndHours(_) {
    final dispensaryHours = dispensaryEndHours!.trim();
    if (dispensaryHours.isEmpty) {
      errors.dispensaryEndHours = "Dispensary hours can't be empty";
    } else {
      errors.dispensaryEndHours = null;
    }
  }

  /////////////*** DISPENSARY PRIVATE  ***//////////////////////

  @action
  void setupDispensaryValidations({bool immediately = false}) {
    if (_dispensaryDisposers.isNotEmpty) {
      for (final dispose in _dispensaryDisposers) {
        dispose();
      }
    }
    _dispensaryDisposers = [
      reaction((_) => dispensaryName, validateDispensaryName,
          fireImmediately: immediately),
      reaction((_) => dispensaryAddress1, validateDispensaryAddress,
          fireImmediately: immediately),
      reaction((_) => dispensaryStartHours, validateDispensaryStartHours,
          fireImmediately: immediately),
      reaction((_) => dispensaryEndHours, validateDispensaryEndHours,
          fireImmediately: immediately),
      reaction((_) => dispensaryEmail, validateDispensaryEmail,
          fireImmediately: immediately),
      reaction((_) => dispensaryPassword, validateDispensaryPassword,
          fireImmediately: immediately),
      reaction((_) => dispensaryPhoneNumber, validateDispensaryPhone,
          fireImmediately: immediately),
      reaction((_) => dispensaryPasswordConfirmation,
          validateDispensaryConfirmPassword,
          fireImmediately: immediately),
    ];
  }

  @action
  void setupConsumerValidations({bool immediately = false}) {
    if (_consumerDisposers.isNotEmpty) {
      for (final dispose in _consumerDisposers) {
        dispose();
      }
    }
    _consumerDisposers = [
      reaction((_) => consumerName, validateConsumerName,
          fireImmediately: immediately),
      reaction((_) => consumerEmail, validateConsumerEmail,
          fireImmediately: immediately),
      reaction((_) => consumerPassword, validateConsumerPassword,
          fireImmediately: immediately),
      reaction((_) => consumerPhoneNumber, validateConsumerPhone,
          fireImmediately: immediately),
      reaction(
          (_) => consumerPasswordConfirmation, validateConsumerConfirmPassword,
          fireImmediately: immediately),
    ];
  }

  @action
  void changeConsumerObscure() {
    hasConsumerObscurePassword = !hasConsumerObscurePassword;
  }

  @action
  void changeDispensaryObscure() {
    hasDispensaryObscurePassword = !hasDispensaryObscurePassword;
  }

  @action
  void changeTermsAndConditionsSelection() {
    agreeToTerms = !agreeToTerms;
  }

  // void validateAllSignUpPage() {
  //   validateEmail(email);
  //   validatePassword(password);
  //   validateFirstName(firstName);
  //   validateLastName(lastName);
  // }

  @action
  Future<void> resetDispensaryValidationErrors() async {
    dispensaryName = '';
    dispensaryEmail = '';
    dispensaryPhoneNumber = '';
    dispensaryAddress1 = '';
    dispensaryStartHours = '';
    dispensaryEndHours = '';
    dispensaryPassword = '';
    dispensaryPasswordConfirmation = '';
  }

  @action
  Future<void> resetConsumerValidationErrors() async {
    consumerName = '';
    consumerEmail = '';
    consumerPhoneNumber = '';
    consumerPassword = '';
    consumerPasswordConfirmation = '';
  }

  // bool checkSignUpTypingOccurred() {
  //   return password!.isNotEmpty &&
  //       email!.isNotEmpty &&
  //       firstName!.isNotEmpty &&
  //       lastName!.isNotEmpty;
  // }

  void dispose() {
    for (final dispose in _dispensaryDisposers) {
      dispose();
    }
    for (final dispose in _consumerDisposers) {
      dispose();
    }
  }
}

class RegistrationStateErrors = _RegistrationStateErrors
    with _$RegistrationStateErrors;

abstract class _RegistrationStateErrors with Store {
  @observable
  String? dispensaryName;

  @observable
  String? consumerName;

  @observable
  String? dispensaryStartHours;

  @observable
  String? dispensaryEndHours;

  @observable
  String? dispensaryEmail;

  @observable
  String? consumerEmail;

  @observable
  String? dispensaryPhone;

  @observable
  String? consumerPhone;

  @observable
  String? dispensaryAddress;

  @observable
  String? dispensaryPassword;

  @observable
  String? consumerPassword;

  @observable
  String? dispensaryConfirmPassword;

  @observable
  String? consumerConfirmPassword;

  @computed
  bool get hasDispenserSignUpErrors =>
      dispensaryName != null ||
      dispensaryEmail != null ||
      dispensaryStartHours != null ||
      dispensaryEndHours != null ||
      dispensaryConfirmPassword != null ||
      dispensaryPassword != null;

  @computed
  bool get hasConsumerSignUpErrors =>
      consumerEmail != null ||
      consumerPassword != null ||
      consumerConfirmPassword != null ||
      consumerPhone != null ||
      consumerName != null;
}
