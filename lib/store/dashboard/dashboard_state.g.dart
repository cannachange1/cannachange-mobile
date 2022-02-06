// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DashboardState on _DashboardState, Store {
  final _$scannedUserAtom = Atom(name: '_DashboardState.scannedUser');

  @override
  ScanResponseModel? get scannedUser {
    _$scannedUserAtom.reportRead();
    return super.scannedUser;
  }

  @override
  set scannedUser(ScanResponseModel? value) {
    _$scannedUserAtom.reportWrite(value, super.scannedUser, () {
      super.scannedUser = value;
    });
  }

  final _$selectedPageNameAtom = Atom(name: '_DashboardState.selectedPageName');

  @override
  String get selectedPageName {
    _$selectedPageNameAtom.reportRead();
    return super.selectedPageName;
  }

  @override
  set selectedPageName(String value) {
    _$selectedPageNameAtom.reportWrite(value, super.selectedPageName, () {
      super.selectedPageName = value;
    });
  }

  final _$scannedQRAtom = Atom(name: '_DashboardState.scannedQR');

  @override
  String get scannedQR {
    _$scannedQRAtom.reportRead();
    return super.scannedQR;
  }

  @override
  set scannedQR(String value) {
    _$scannedQRAtom.reportWrite(value, super.scannedQR, () {
      super.scannedQR = value;
    });
  }

  final _$changePageAsyncAction = AsyncAction('_DashboardState.changePage');

  @override
  Future<void> changePage({required int targetPage, required String pageName}) {
    return _$changePageAsyncAction.run(
        () => super.changePage(targetPage: targetPage, pageName: pageName));
  }

  final _$scanQrAsyncAction = AsyncAction('_DashboardState.scanQr');

  @override
  Future<void> scanQr(String qr) {
    return _$scanQrAsyncAction.run(() => super.scanQr(qr));
  }

  @override
  String toString() {
    return '''
scannedUser: ${scannedUser},
selectedPageName: ${selectedPageName},
scannedQR: ${scannedQR}
    ''';
  }
}
