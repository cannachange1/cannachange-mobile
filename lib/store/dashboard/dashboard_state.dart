import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../data/repository/dashboard_repository.dart';
import '../../model/scan_response_model/scan_response_model.dart';
import '../store_state/store_state.dart';

part 'dashboard_state.g.dart';

class DashboardState = _DashboardState with _$DashboardState;

abstract class _DashboardState with Store {
  PageController pageNavigationController = PageController();
  final dashboardRepo = DashboardRepository();
  final StoreState storeState = StoreState();

  @observable
  ScanResponseModel? scannedUser;

  @observable
  String selectedPageName = '';

  @observable
  String scannedQR = '';

  @action
  Future<void> changePage(
      {required int targetPage, required String pageName}) async {
    pageNavigationController.jumpToPage(targetPage);
    selectedPageName = pageName;
  }

  @action
  Future<void> scanQr(String qr) async {
    try {
      storeState.changeState(StoreStates.loading);
      scannedQR = qr;
      scannedUser = await dashboardRepo.scanQr(qr);
    } on Exception catch (e) {
      storeState.changeState(StoreStates.error);
      storeState.setErrorMessage(e.toString());
    }
  }
}
