import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'dashboard_state.g.dart';

class DashboardState = _DashboardState with _$DashboardState;

abstract class _DashboardState with Store {
  PageController pageNavigationController = PageController();

  @observable
  String selectedPageName = '';

  @action
  Future<void> changePage(
      {required int targetPage, required String pageName}) async {
    pageNavigationController.jumpToPage(targetPage);
    selectedPageName = pageName;
  }
}
