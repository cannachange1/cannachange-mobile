// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_data_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PersonalDataState on _PersonalDataState, Store {
  Computed<UserModel>? _$currentUserComputed;

  @override
  UserModel get currentUser =>
      (_$currentUserComputed ??= Computed<UserModel>(() => super.currentUser,
              name: '_PersonalDataState.currentUser'))
          .value;

  final _$clientModelAtom = Atom(name: '_PersonalDataState.clientModel');

  @override
  ClientModel? get clientModel {
    _$clientModelAtom.reportRead();
    return super.clientModel;
  }

  @override
  set clientModel(ClientModel? value) {
    _$clientModelAtom.reportWrite(value, super.clientModel, () {
      super.clientModel = value;
    });
  }

  final _$dispensaryModelAtom =
      Atom(name: '_PersonalDataState.dispensaryModel');

  @override
  DispensaryModel? get dispensaryModel {
    _$dispensaryModelAtom.reportRead();
    return super.dispensaryModel;
  }

  @override
  set dispensaryModel(DispensaryModel? value) {
    _$dispensaryModelAtom.reportWrite(value, super.dispensaryModel, () {
      super.dispensaryModel = value;
    });
  }

  final _$dispensaryNameAtom = Atom(name: '_PersonalDataState.dispensaryName');

  @override
  String get dispensaryName {
    _$dispensaryNameAtom.reportRead();
    return super.dispensaryName;
  }

  @override
  set dispensaryName(String value) {
    _$dispensaryNameAtom.reportWrite(value, super.dispensaryName, () {
      super.dispensaryName = value;
    });
  }

  final _$dispensaryAddressAtom =
      Atom(name: '_PersonalDataState.dispensaryAddress');

  @override
  String get dispensaryAddress {
    _$dispensaryAddressAtom.reportRead();
    return super.dispensaryAddress;
  }

  @override
  set dispensaryAddress(String value) {
    _$dispensaryAddressAtom.reportWrite(value, super.dispensaryAddress, () {
      super.dispensaryAddress = value;
    });
  }

  final _$dispensaryWorkingHoursAtom =
      Atom(name: '_PersonalDataState.dispensaryWorkingHours');

  @override
  String? get dispensaryWorkingHours {
    _$dispensaryWorkingHoursAtom.reportRead();
    return super.dispensaryWorkingHours;
  }

  @override
  set dispensaryWorkingHours(String? value) {
    _$dispensaryWorkingHoursAtom
        .reportWrite(value, super.dispensaryWorkingHours, () {
      super.dispensaryWorkingHours = value;
    });
  }

  final _$dispensaryEmailAtom =
      Atom(name: '_PersonalDataState.dispensaryEmail');

  @override
  String? get dispensaryEmail {
    _$dispensaryEmailAtom.reportRead();
    return super.dispensaryEmail;
  }

  @override
  set dispensaryEmail(String? value) {
    _$dispensaryEmailAtom.reportWrite(value, super.dispensaryEmail, () {
      super.dispensaryEmail = value;
    });
  }

  final _$dispensaryPhoneAtom =
      Atom(name: '_PersonalDataState.dispensaryPhone');

  @override
  String? get dispensaryPhone {
    _$dispensaryPhoneAtom.reportRead();
    return super.dispensaryPhone;
  }

  @override
  set dispensaryPhone(String? value) {
    _$dispensaryPhoneAtom.reportWrite(value, super.dispensaryPhone, () {
      super.dispensaryPhone = value;
    });
  }

  final _$clientSelectedImageAtom =
      Atom(name: '_PersonalDataState.clientSelectedImage');

  @override
  File? get clientSelectedImage {
    _$clientSelectedImageAtom.reportRead();
    return super.clientSelectedImage;
  }

  @override
  set clientSelectedImage(File? value) {
    _$clientSelectedImageAtom.reportWrite(value, super.clientSelectedImage, () {
      super.clientSelectedImage = value;
    });
  }

  final _$imageUrlAtom = Atom(name: '_PersonalDataState.imageUrl');

  @override
  String get imageUrl {
    _$imageUrlAtom.reportRead();
    return super.imageUrl;
  }

  @override
  set imageUrl(String value) {
    _$imageUrlAtom.reportWrite(value, super.imageUrl, () {
      super.imageUrl = value;
    });
  }

  final _$pickImageAsyncAction = AsyncAction('_PersonalDataState.pickImage');

  @override
  Future<void> pickImage() {
    return _$pickImageAsyncAction.run(() => super.pickImage());
  }

  final _$forgetPasswordInitAsyncAction =
      AsyncAction('_PersonalDataState.forgetPasswordInit');

  @override
  Future<void> forgetPasswordInit(String email, BuildContext context) {
    return _$forgetPasswordInitAsyncAction
        .run(() => super.forgetPasswordInit(email, context));
  }

  final _$forgetPasswordFinishAsyncAction =
      AsyncAction('_PersonalDataState.forgetPasswordFinish');

  @override
  Future<void> forgetPasswordFinish(String code, String newPassword) {
    return _$forgetPasswordFinishAsyncAction
        .run(() => super.forgetPasswordFinish(code, newPassword));
  }

  final _$changePasswordAsyncAction =
      AsyncAction('_PersonalDataState.changePassword');

  @override
  Future<void> changePassword(String oldPassword, String newPassword) {
    return _$changePasswordAsyncAction
        .run(() => super.changePassword(oldPassword, newPassword));
  }

  final _$_PersonalDataStateActionController =
      ActionController(name: '_PersonalDataState');

  @override
  void setDispensaryName(String value) {
    final _$actionInfo = _$_PersonalDataStateActionController.startAction(
        name: '_PersonalDataState.setDispensaryName');
    try {
      return super.setDispensaryName(value);
    } finally {
      _$_PersonalDataStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDispensaryHours(String value) {
    final _$actionInfo = _$_PersonalDataStateActionController.startAction(
        name: '_PersonalDataState.setDispensaryHours');
    try {
      return super.setDispensaryHours(value);
    } finally {
      _$_PersonalDataStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDispensaryAddressLine1(String value) {
    final _$actionInfo = _$_PersonalDataStateActionController.startAction(
        name: '_PersonalDataState.setDispensaryAddressLine1');
    try {
      return super.setDispensaryAddressLine1(value);
    } finally {
      _$_PersonalDataStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDispensaryAddressLine2(String value) {
    final _$actionInfo = _$_PersonalDataStateActionController.startAction(
        name: '_PersonalDataState.setDispensaryAddressLine2');
    try {
      return super.setDispensaryAddressLine2(value);
    } finally {
      _$_PersonalDataStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDispensaryPhone(String value) {
    final _$actionInfo = _$_PersonalDataStateActionController.startAction(
        name: '_PersonalDataState.setDispensaryPhone');
    try {
      return super.setDispensaryPhone(value);
    } finally {
      _$_PersonalDataStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDispensaryEmail(String value) {
    final _$actionInfo = _$_PersonalDataStateActionController.startAction(
        name: '_PersonalDataState.setDispensaryEmail');
    try {
      return super.setDispensaryEmail(value);
    } finally {
      _$_PersonalDataStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
clientModel: ${clientModel},
dispensaryModel: ${dispensaryModel},
dispensaryName: ${dispensaryName},
dispensaryAddress: ${dispensaryAddress},
dispensaryWorkingHours: ${dispensaryWorkingHours},
dispensaryEmail: ${dispensaryEmail},
dispensaryPhone: ${dispensaryPhone},
clientSelectedImage: ${clientSelectedImage},
imageUrl: ${imageUrl},
currentUser: ${currentUser}
    ''';
  }
}
