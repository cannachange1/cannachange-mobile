import 'dart:async';
import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:cannachange/data/repository/authorization_repository.dart';
import 'package:cannachange/model/register_response/register_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../constants/regexp.dart';
import '../../helpers/overlay_helper.dart';
import '../../router.gr.dart';

part 'registration_state.g.dart';

class RegistrationState = _RegistrationState with _$RegistrationState;

abstract class _RegistrationState with Store {
  final authorizationRepo = AuthenticationRepo();
  List<ReactionDisposer> _disposers = [];

  // final loadingState = LoadingState();
  final RegistrationStateErrors errors = RegistrationStateErrors();

  @observable
  String? firstName = '';

  @observable
  String? lastName = '';

  @observable
  String? email = '';

  @observable
  String? phoneNumber = '';

  @observable
  bool hasObscurePassword = true;

  @observable
  String? password = '';

  @observable
  String? passwordConfirmation = '';

  @observable
  String? otp = '';

  @observable
  bool agreeToTerms = false;

  @observable
  bool agreedToSmsNotification = false;

  @observable
  bool agreedToTermsAndConditions = false;

  @action
  void setAgreedToSmsNotification() {
    agreedToSmsNotification = !agreedToSmsNotification;
  }

  @action
  void setAgreedToTermsAndConditions() {
    agreedToTermsAndConditions = !agreedToTermsAndConditions;
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

  @action
  void validateFirstName(_) {
    final firstName = this.firstName!.trim();
    if (firstName.isEmpty) {
      errors.firstName = "First name can't be empty";
    } else {
      errors.firstName = null;
    }
  }

  @action
  void validateLastName(_) {
    final lastName = this.lastName!.trim();
    if (lastName.isEmpty) {
      errors.lastName = "Last name can't be empty";
    } else {
      errors.lastName = null;
    }
  }

  @action
  void validatePassword(_) {
    final password = this.password!.trim();
    if (password.length < 6) {
      errors.password = 'Too short (more than 5)';
    } else {
      errors.password = null;
    }
  }

  @action
  void validateConfirmPassword(_) {
    if (passwordConfirmation!.trim().length < 6) {
      errors.confirmPassword = 'Too short (more than 5)';
    } else if (passwordConfirmation!.trim() != password) {
      errors.confirmPassword = 'Password is not identical';
    } else {
      errors.confirmPassword = null;
    }
  }

  @action
  void validateEmail(_) {
    final email = this.email!.trim();
    if (email.isEmpty) {
      errors.email = "Email can't be empty";
    } else if (!RegExp(emailRegExp).hasMatch(email)) {
      errors.email = 'Invalid email address';
    } else {
      errors.email = null;
    }
  }

  @action
  void validatePhone(_) {
    final phone = phoneNumber!.trim();
    if (phone.isEmpty) {
      errors.phoneNumber = "Phone number can't be empty";
    } else if (!phone.startsWith('+')) {
      errors.phoneNumber = 'Phone number should start with "+"';
    } else {
      errors.phoneNumber = null;
    }
  }

  @action
  void setupValidations({bool immediately = false}) {
    if (_disposers.isNotEmpty) {
      for (final dispose in _disposers) {
        dispose();
      }
    }
    _disposers = [
      reaction((_) => firstName, validateFirstName,
          fireImmediately: immediately),
      reaction((_) => lastName, validateLastName, fireImmediately: immediately),
      reaction((_) => email, validateEmail, fireImmediately: immediately),
      reaction((_) => password, validatePassword, fireImmediately: immediately),
      reaction((_) => phoneNumber, validatePhone, fireImmediately: immediately),
      reaction((_) => passwordConfirmation, validateConfirmPassword,
          fireImmediately: immediately),
    ];
  }

  @action
  void changeObscure() {
    hasObscurePassword = !hasObscurePassword;
  }

  @action
  void changeTermsAndConditionsSelection() {
    agreeToTerms = !agreeToTerms;
  }

  void validateAllSignUpPage() {
    validateEmail(email);
    validatePassword(password);
    validateFirstName(firstName);
    validateLastName(lastName);
  }

  @action
  Future<void> resetValidationErrors() async {
    firstName = '';
    lastName = '';
    email = '';
    password = '';
    passwordConfirmation = '';
    phoneNumber = '';
  }

  bool checkSignUpTypingOccurred() {
    return password!.isNotEmpty &&
        email!.isNotEmpty &&
        firstName!.isNotEmpty &&
        lastName!.isNotEmpty;
  }

  void dispose() {
    for (final dispose in _disposers) {
      dispose();
    }
  }
}

class RegistrationStateErrors = _RegistrationStateErrors
    with _$RegistrationStateErrors;

abstract class _RegistrationStateErrors with Store {
  @observable
  String? firstName;

  @observable
  String? email;

  @observable
  String? lastName;

  @observable
  String? password;

  @observable
  String? confirmPassword;

  @observable
  String? county;

  @observable
  String? phoneNumber;

  @computed
  bool get hasSignUpErrors =>
      email != null ||
      password != null ||
      firstName != null ||
      county != null ||
      confirmPassword != null ||
      lastName != null;
}
