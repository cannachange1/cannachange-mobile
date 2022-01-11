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

  final _$userAtom = Atom(name: '_PersonalDataState.user');

  @override
  UserModel? get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserModel? value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$genderAtom = Atom(name: '_PersonalDataState.gender');

  @override
  String get gender {
    _$genderAtom.reportRead();
    return super.gender;
  }

  @override
  set gender(String value) {
    _$genderAtom.reportWrite(value, super.gender, () {
      super.gender = value;
    });
  }

  final _$birthDateAtom = Atom(name: '_PersonalDataState.birthDate');

  @override
  DateTime? get birthDate {
    _$birthDateAtom.reportRead();
    return super.birthDate;
  }

  @override
  set birthDate(DateTime? value) {
    _$birthDateAtom.reportWrite(value, super.birthDate, () {
      super.birthDate = value;
    });
  }

  final _$selectedImageAtom = Atom(name: '_PersonalDataState.selectedImage');

  @override
  File? get selectedImage {
    _$selectedImageAtom.reportRead();
    return super.selectedImage;
  }

  @override
  set selectedImage(File? value) {
    _$selectedImageAtom.reportWrite(value, super.selectedImage, () {
      super.selectedImage = value;
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
  void setFirstName(String value) {
    final _$actionInfo = _$_PersonalDataStateActionController.startAction(
        name: '_PersonalDataState.setFirstName');
    try {
      return super.setFirstName(value);
    } finally {
      _$_PersonalDataStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLastName(String value) {
    final _$actionInfo = _$_PersonalDataStateActionController.startAction(
        name: '_PersonalDataState.setLastName');
    try {
      return super.setLastName(value);
    } finally {
      _$_PersonalDataStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_PersonalDataStateActionController.startAction(
        name: '_PersonalDataState.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_PersonalDataStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user},
gender: ${gender},
birthDate: ${birthDate},
selectedImage: ${selectedImage},
imageUrl: ${imageUrl},
currentUser: ${currentUser}
    ''';
  }
}
