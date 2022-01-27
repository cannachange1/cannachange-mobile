// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginState on _LoginState, Store {
  Computed<UserModel>? _$currentUserComputed;

  @override
  UserModel get currentUser =>
      (_$currentUserComputed ??= Computed<UserModel>(() => super.currentUser,
              name: '_LoginState.currentUser'))
          .value;

  final _$passwordAtom = Atom(name: '_LoginState.password');

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

  final _$isObscurePasswordAtom = Atom(name: '_LoginState.isObscurePassword');

  @override
  bool get isObscurePassword {
    _$isObscurePasswordAtom.reportRead();
    return super.isObscurePassword;
  }

  @override
  set isObscurePassword(bool value) {
    _$isObscurePasswordAtom.reportWrite(value, super.isObscurePassword, () {
      super.isObscurePassword = value;
    });
  }

  final _$emailAtom = Atom(name: '_LoginState.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$_currentUserAtom = Atom(name: '_LoginState._currentUser');

  @override
  UserModel? get _currentUser {
    _$_currentUserAtom.reportRead();
    return super._currentUser;
  }

  @override
  set _currentUser(UserModel? value) {
    _$_currentUserAtom.reportWrite(value, super._currentUser, () {
      super._currentUser = value;
    });
  }

  final _$logInConsumerAsyncAction = AsyncAction('_LoginState.logInConsumer');

  @override
  Future<void> logInConsumer(BuildContext cont) {
    return _$logInConsumerAsyncAction.run(() => super.logInConsumer(cont));
  }

  final _$_LoginStateActionController = ActionController(name: '_LoginState');

  @override
  void changeObscure() {
    final _$actionInfo = _$_LoginStateActionController.startAction(
        name: '_LoginState.changeObscure');
    try {
      return super.changeObscure();
    } finally {
      _$_LoginStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo =
        _$_LoginStateActionController.startAction(name: '_LoginState.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_LoginStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_LoginStateActionController.startAction(
        name: '_LoginState.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_LoginStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateEmail(dynamic _) {
    final _$actionInfo = _$_LoginStateActionController.startAction(
        name: '_LoginState.validateEmail');
    try {
      return super.validateEmail(_);
    } finally {
      _$_LoginStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePassword(dynamic _) {
    final _$actionInfo = _$_LoginStateActionController.startAction(
        name: '_LoginState.validatePassword');
    try {
      return super.validatePassword(_);
    } finally {
      _$_LoginStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
password: ${password},
isObscurePassword: ${isObscurePassword},
email: ${email},
currentUser: ${currentUser}
    ''';
  }
}

mixin _$LoginStateErrors on _LoginStateErrors, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_LoginStateErrors.hasErrors'))
          .value;

  final _$passwordAtom = Atom(name: '_LoginStateErrors.password');

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

  final _$emailAtom = Atom(name: '_LoginStateErrors.email');

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

  final _$resetValidationErrorsAsyncAction =
      AsyncAction('_LoginStateErrors.resetValidationErrors');

  @override
  Future<void> resetValidationErrors() {
    return _$resetValidationErrorsAsyncAction
        .run(() => super.resetValidationErrors());
  }

  @override
  String toString() {
    return '''
password: ${password},
email: ${email},
hasErrors: ${hasErrors}
    ''';
  }
}
