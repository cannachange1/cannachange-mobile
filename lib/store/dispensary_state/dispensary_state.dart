import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cannachange/data/repository/dispansary_repository.dart';
import 'package:cannachange/data/repository/personal_data_repository.dart';
import 'package:cannachange/model/client/client_model.dart';
import 'package:cannachange/model/dispensary/dispensary_model.dart';
import 'package:cannachange/model/user/user_model.dart';
import 'package:cannachange/store/store_state/store_state.dart';
import 'package:cannachange/ui/widgets/dialogs/reset_password_code_dialog.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'dispensary_state.g.dart';

class DispensaryState = _DispensaryState with _$DispensaryState;

abstract class _DispensaryState with Store {
  final dispensaryRepository = DispensaryRepository();
  final StoreState storeState = StoreState();


  @observable
  String qrCode = '';


  @observable
  String imageUrl = '';


  @action
  Future<void> addPoints(int point, String code) async {
    try {
      storeState.changeState(StoreStates.loading);
      await dispensaryRepository.addPoints(point, code);
      storeState.changeState(StoreStates.success);

    } on Exception catch (e) {
      storeState.setErrorMessage(e.toString());
      storeState.changeState(StoreStates.error);
    }

  }

  @action
  Future<void> redeemPoints(int point, String code) async {
    try {
      storeState.changeState(StoreStates.loading);
      await dispensaryRepository.addPoints(point, code);
      storeState.changeState(StoreStates.success);

    } on Exception catch (e) {
      storeState.setErrorMessage(e.toString());
      storeState.changeState(StoreStates.error);
    }

  }
}
