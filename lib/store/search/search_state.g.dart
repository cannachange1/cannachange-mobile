// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchState on _SearchState, Store {
  final _$filteredDispensariesListAtom =
      Atom(name: '_SearchState.filteredDispensariesList');

  @override
  ObservableList<DispensaryModel> get filteredDispensariesList {
    _$filteredDispensariesListAtom.reportRead();
    return super.filteredDispensariesList;
  }

  @override
  set filteredDispensariesList(ObservableList<DispensaryModel> value) {
    _$filteredDispensariesListAtom
        .reportWrite(value, super.filteredDispensariesList, () {
      super.filteredDispensariesList = value;
    });
  }

  final _$searchKeyAtom = Atom(name: '_SearchState.searchKey');

  @override
  String get searchKey {
    _$searchKeyAtom.reportRead();
    return super.searchKey;
  }

  @override
  set searchKey(String value) {
    _$searchKeyAtom.reportWrite(value, super.searchKey, () {
      super.searchKey = value;
    });
  }

  final _$hasNextPageAtom = Atom(name: '_SearchState.hasNextPage');

  @override
  bool get hasNextPage {
    _$hasNextPageAtom.reportRead();
    return super.hasNextPage;
  }

  @override
  set hasNextPage(bool value) {
    _$hasNextPageAtom.reportWrite(value, super.hasNextPage, () {
      super.hasNextPage = value;
    });
  }

  final _$getDispensariesAsyncAction =
      AsyncAction('_SearchState.getDispensaries');

  @override
  Future<void> getDispensaries(String searchKey, int pageKey) {
    return _$getDispensariesAsyncAction
        .run(() => super.getDispensaries(searchKey, pageKey));
  }

  @override
  String toString() {
    return '''
filteredDispensariesList: ${filteredDispensariesList},
searchKey: ${searchKey},
hasNextPage: ${hasNextPage}
    ''';
  }
}
