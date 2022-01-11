// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DashboardState on _DashboardState, Store {
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

  final _$changePageAsyncAction = AsyncAction('_DashboardState.changePage');

  @override
  Future<void> changePage({required int targetPage, required String pageName}) {
    return _$changePageAsyncAction.run(
        () => super.changePage(targetPage: targetPage, pageName: pageName));
  }

  @override
  String toString() {
    return '''
selectedPageName: ${selectedPageName}
    ''';
  }
}
