// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegistrationState on _RegistrationState, Store {
  final _$firstNameAtom = Atom(name: '_RegistrationState.firstName');

  @override
  String? get firstName {
    _$firstNameAtom.reportRead();
    return super.firstName;
  }

  @override
  set firstName(String? value) {
    _$firstNameAtom.reportWrite(value, super.firstName, () {
      super.firstName = value;
    });
  }

  final _$lastNameAtom = Atom(name: '_RegistrationState.lastName');

  @override
  String? get lastName {
    _$lastNameAtom.reportRead();
    return super.lastName;
  }

  @override
  set lastName(String? value) {
    _$lastNameAtom.reportWrite(value, super.lastName, () {
      super.lastName = value;
    });
  }

  final _$emailAtom = Atom(name: '_RegistrationState.email');

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$phoneNumberAtom = Atom(name: '_RegistrationState.phoneNumber');

  @override
  String? get phoneNumber {
    _$phoneNumberAtom.reportRead();
    return super.phoneNumber;
  }

  @override
  set phoneNumber(String? value) {
    _$phoneNumberAtom.reportWrite(value, super.phoneNumber, () {
      super.phoneNumber = value;
    });
  }

  final _$hasObscurePasswordAtom =
      Atom(name: '_RegistrationState.hasObscurePassword');

  @override
  bool get hasObscurePassword {
    _$hasObscurePasswordAtom.reportRead();
    return super.hasObscurePassword;
  }

  @override
  set hasObscurePassword(bool value) {
    _$hasObscurePasswordAtom.reportWrite(value, super.hasObscurePassword, () {
      super.hasObscurePassword = value;
    });
  }

  final _$passwordAtom = Atom(name: '_RegistrationState.password');

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$passwordConfirmationAtom =
      Atom(name: '_RegistrationState.passwordConfirmation');

  @override
  String? get passwordConfirmation {
    _$passwordConfirmationAtom.reportRead();
    return super.passwordConfirmation;
  }

  @override
  set passwordConfirmation(String? value) {
    _$passwordConfirmationAtom.reportWrite(value, super.passwordConfirmation,
        () {
      super.passwordConfirmation = value;
    });
  }

  final _$otpAtom = Atom(name: '_RegistrationState.otp');

  @override
  String? get otp {
    _$otpAtom.reportRead();
    return super.otp;
  }

  @override
  set otp(String? value) {
    _$otpAtom.reportWrite(value, super.otp, () {
      super.otp = value;
    });
  }

  final _$agreeToTermsAtom = Atom(name: '_RegistrationState.agreeToTerms');

  @override
  bool get agreeToTerms {
    _$agreeToTermsAtom.reportRead();
    return super.agreeToTerms;
  }

  @override
  set agreeToTerms(bool value) {
    _$agreeToTermsAtom.reportWrite(value, super.agreeToTerms, () {
      super.agreeToTerms = value;
    });
  }

  final _$agreedToSmsNotificationAtom =
      Atom(name: '_RegistrationState.agreedToSmsNotification');

  @override
  bool get agreedToSmsNotification {
    _$agreedToSmsNotificationAtom.reportRead();
    return super.agreedToSmsNotification;
  }

  @override
  set agreedToSmsNotification(bool value) {
    _$agreedToSmsNotificationAtom
        .reportWrite(value, super.agreedToSmsNotification, () {
      super.agreedToSmsNotification = value;
    });
  }

  final _$agreedToTermsAndConditionsAtom =
      Atom(name: '_RegistrationState.agreedToTermsAndConditions');

  @override
  bool get agreedToTermsAndConditions {
    _$agreedToTermsAndConditionsAtom.reportRead();
    return super.agreedToTermsAndConditions;
  }

  @override
  set agreedToTermsAndConditions(bool value) {
    _$agreedToTermsAndConditionsAtom
        .reportWrite(value, super.agreedToTermsAndConditions, () {
      super.agreedToTermsAndConditions = value;
    });
  }

  final _$forgetPasswordInitAsyncAction =
      AsyncAction('_RegistrationState.forgetPasswordInit');

  @override
  Future<RegisterResponse> forgetPasswordInit(BuildContext context) {
    return _$forgetPasswordInitAsyncAction
        .run(() => super.forgetPasswordInit(context));
  }

  final _$activateAccountAsyncAction =
      AsyncAction('_RegistrationState.activateAccount');

  @override
  Future<void> activateAccount(BuildContext context, String code) {
    return _$activateAccountAsyncAction
        .run(() => super.activateAccount(context, code));
  }

  final _$registerAsyncAction = AsyncAction('_RegistrationState.register');

  @override
  Future<void> register(BuildContext context) {
    return _$registerAsyncAction.run(() => super.register(context));
  }

  final _$resetValidationErrorsAsyncAction =
      AsyncAction('_RegistrationState.resetValidationErrors');

  @override
  Future<void> resetValidationErrors() {
    return _$resetValidationErrorsAsyncAction
        .run(() => super.resetValidationErrors());
  }

  final _$_RegistrationStateActionController =
      ActionController(name: '_RegistrationState');

  @override
  void setAgreedToSmsNotification() {
    final _$actionInfo = _$_RegistrationStateActionController.startAction(
        name: '_RegistrationState.setAgreedToSmsNotification');
    try {
      return super.setAgreedToSmsNotification();
    } finally {
      _$_RegistrationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAgreedToTermsAndConditions() {
    final _$actionInfo = _$_RegistrationStateActionController.startAction(
        name: '_RegistrationState.setAgreedToTermsAndConditions');
    try {
      return super.setAgreedToTermsAndConditions();
    } finally {
      _$_RegistrationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateFirstName(dynamic _) {
    final _$actionInfo = _$_RegistrationStateActionController.startAction(
        name: '_RegistrationState.validateFirstName');
    try {
      return super.validateFirstName(_);
    } finally {
      _$_RegistrationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateLastName(dynamic _) {
    final _$actionInfo = _$_RegistrationStateActionController.startAction(
        name: '_RegistrationState.validateLastName');
    try {
      return super.validateLastName(_);
    } finally {
      _$_RegistrationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePassword(dynamic _) {
    final _$actionInfo = _$_RegistrationStateActionController.startAction(
        name: '_RegistrationState.validatePassword');
    try {
      return super.validatePassword(_);
    } finally {
      _$_RegistrationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateConfirmPassword(dynamic _) {
    final _$actionInfo = _$_RegistrationStateActionController.startAction(
        name: '_RegistrationState.validateConfirmPassword');
    try {
      return super.validateConfirmPassword(_);
    } finally {
      _$_RegistrationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateEmail(dynamic _) {
    final _$actionInfo = _$_RegistrationStateActionController.startAction(
        name: '_RegistrationState.validateEmail');
    try {
      return super.validateEmail(_);
    } finally {
      _$_RegistrationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePhone(dynamic _) {
    final _$actionInfo = _$_RegistrationStateActionController.startAction(
        name: '_RegistrationState.validatePhone');
    try {
      return super.validatePhone(_);
    } finally {
      _$_RegistrationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setupValidations({bool immediately = false}) {
    final _$actionInfo = _$_RegistrationStateActionController.startAction(
        name: '_RegistrationState.setupValidations');
    try {
      return super.setupValidations(immediately: immediately);
    } finally {
      _$_RegistrationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeObscure() {
    final _$actionInfo = _$_RegistrationStateActionController.startAction(
        name: '_RegistrationState.changeObscure');
    try {
      return super.changeObscure();
    } finally {
      _$_RegistrationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeTermsAndConditionsSelection() {
    final _$actionInfo = _$_RegistrationStateActionController.startAction(
        name: '_RegistrationState.changeTermsAndConditionsSelection');
    try {
      return super.changeTermsAndConditionsSelection();
    } finally {
      _$_RegistrationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
firstName: ${firstName},
lastName: ${lastName},
email: ${email},
phoneNumber: ${phoneNumber},
hasObscurePassword: ${hasObscurePassword},
password: ${password},
passwordConfirmation: ${passwordConfirmation},
otp: ${otp},
agreeToTerms: ${agreeToTerms},
agreedToSmsNotification: ${agreedToSmsNotification},
agreedToTermsAndConditions: ${agreedToTermsAndConditions}
    ''';
  }
}

mixin _$RegistrationStateErrors on _RegistrationStateErrors, Store {
  Computed<bool>? _$hasSignUpErrorsComputed;

  @override
  bool get hasSignUpErrors =>
      (_$hasSignUpErrorsComputed ??= Computed<bool>(() => super.hasSignUpErrors,
              name: '_RegistrationStateErrors.hasSignUpErrors'))
          .value;

  final _$firstNameAtom = Atom(name: '_RegistrationStateErrors.firstName');

  @override
  String? get firstName {
    _$firstNameAtom.reportRead();
    return super.firstName;
  }

  @override
  set firstName(String? value) {
    _$firstNameAtom.reportWrite(value, super.firstName, () {
      super.firstName = value;
    });
  }

  final _$emailAtom = Atom(name: '_RegistrationStateErrors.email');

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$lastNameAtom = Atom(name: '_RegistrationStateErrors.lastName');

  @override
  String? get lastName {
    _$lastNameAtom.reportRead();
    return super.lastName;
  }

  @override
  set lastName(String? value) {
    _$lastNameAtom.reportWrite(value, super.lastName, () {
      super.lastName = value;
    });
  }

  final _$passwordAtom = Atom(name: '_RegistrationStateErrors.password');

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$confirmPasswordAtom =
      Atom(name: '_RegistrationStateErrors.confirmPassword');

  @override
  String? get confirmPassword {
    _$confirmPasswordAtom.reportRead();
    return super.confirmPassword;
  }

  @override
  set confirmPassword(String? value) {
    _$confirmPasswordAtom.reportWrite(value, super.confirmPassword, () {
      super.confirmPassword = value;
    });
  }

  final _$countyAtom = Atom(name: '_RegistrationStateErrors.county');

  @override
  String? get county {
    _$countyAtom.reportRead();
    return super.county;
  }

  @override
  set county(String? value) {
    _$countyAtom.reportWrite(value, super.county, () {
      super.county = value;
    });
  }

  final _$phoneNumberAtom = Atom(name: '_RegistrationStateErrors.phoneNumber');

  @override
  String? get phoneNumber {
    _$phoneNumberAtom.reportRead();
    return super.phoneNumber;
  }

  @override
  set phoneNumber(String? value) {
    _$phoneNumberAtom.reportWrite(value, super.phoneNumber, () {
      super.phoneNumber = value;
    });
  }

  @override
  String toString() {
    return '''
firstName: ${firstName},
email: ${email},
lastName: ${lastName},
password: ${password},
confirmPassword: ${confirmPassword},
county: ${county},
phoneNumber: ${phoneNumber},
hasSignUpErrors: ${hasSignUpErrors}
    ''';
  }
}
