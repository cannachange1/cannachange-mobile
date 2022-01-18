import 'dart:async';
import 'dart:convert';

import 'package:cannachange/data/repository/authorization_repository.dart';
import 'package:cannachange/store/store_state/store_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../constants/regexp.dart';
import '../../helpers/overlay_helper.dart';

part 'registration_state.g.dart';

class RegistrationState = _RegistrationState with _$RegistrationState;

abstract class _RegistrationState with Store {
  final authorizationRepo = AuthenticationRepo();
  List<ReactionDisposer> _dispensaryDisposers = [];
  List<ReactionDisposer> _consumerDisposers = [];

  final StoreState storeState = StoreState();
  final RegistrationStateErrors errors = RegistrationStateErrors();

  @observable
  String? dispensaryName = '';
  @observable
  String? consumerName = '';

  ///////////////////////////////////

  @observable
  String? dispensaryShippingAddress = '';
  @observable
  String? dispensaryAddress = '';
  @observable
  String? dispensaryHours = '';

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
  ///////////////////////////////////


  @observable
  String? otp = '';

  @observable
  bool agreeToTerms = false;


  @action
  void setAgreedToDispensaryTermsAndConditions() {
    agreedToDispensaryTermsAndConditions = !agreedToDispensaryTermsAndConditions;
  }

  @action
  void setAgreedToConsumerTermsAndConditions() {
    agreedToConsumerTermsAndConditions = !agreedToConsumerTermsAndConditions;
  }

  @action
  Future<void> activateAccount(BuildContext context, String code) async {
    try {
      await authorizationRepo.sendOTPCode(code);
    } on DioError catch (e) {
      final Map<String, dynamic> map = jsonDecode(e.response!.data);
      showCustomOverlayNotification(color: Colors.red, text: map['title']);
      return Future.error(map['title']);
    } finally {}
  }

  @action
  Future<void> register(BuildContext context) async {
    //  loadingState.startLoading();
    //   try {
    //     await authorizationRepo.register({
    //       "password": password!,
    //       "firstName": firstName!,
    //       "login": phoneNumber!.replaceAll('+', '00'),
    //       "email": email!.trim(),
    //       "lastName": lastName!,
    //       "mainSource": describeEnum(mainDocumentCategory!.key)
    //     });
    //     resetValidationErrors();
    //     AutoRouter.of(context).replace(const VerifyOtpCodeRoute());
    //   } on DioError catch (e) {
    //     final Map<String, dynamic> map = jsonDecode(e.response!.data);
    //     showCustomOverlayNotification(color: Colors.red, text: map['title']);
    //     return Future.error(map['title']);
    //   } finally {
    //     loadingState.stopLoading();
    //   }
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
      // reaction((_) => dispensaryEmail, validateLastName, fireImmediately: immediately),
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
    dispensaryPassword = '';
    dispensaryShippingAddress = '';
    dispensaryAddress = '';
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
  String? dispensaryEmail;

  @observable
  String? dispensaryHours;

  @observable
  String? consumerEmail;

  @observable
  String? dispensaryPhone;

  @observable
  String? consumerPhone;

  @observable
  String? dispensaryPassword;

  @observable
  String? dispensaryAddress;

  @observable
  String? dispensaryConfirmPassword;

  @observable
  String? consumerPassword;

  @observable
  String? consumerConfirmPassword;

  @computed
  bool get hasDispenserSignUpErrors =>
      dispensaryName != null ||
      dispensaryEmail != null ||
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
