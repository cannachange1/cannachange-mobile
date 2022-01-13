import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cannachange/data/repository/personal_data_repository.dart';
import 'package:cannachange/model/user/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mobx/mobx.dart';

import '../../router.gr.dart';

part 'settings_state.g.dart';

class SettingsState = _SettingsState with _$SettingsState;

abstract class _SettingsState with Store {
  final dashboardState = GetIt.I<PersonalDataRepository>();

  final storage = GetStorage();
  //final loading = LoadingState();

  @observable
  UserModel? user;


  // Future<void> logOut(BuildContext context) async {
  //   loading.startLoading();
  //   await storage.erase();
  //   await AutoRouter.of(context).replace(const AuthorizationRoute());
  // }
}
