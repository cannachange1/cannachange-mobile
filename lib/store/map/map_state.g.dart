// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MapState on _MapState, Store {
  final _$latlngListAtom = Atom(name: '_MapState.latlngList');

  @override
  ObservableList<LatLng> get latlngList {
    _$latlngListAtom.reportRead();
    return super.latlngList;
  }

  @override
  set latlngList(ObservableList<LatLng> value) {
    _$latlngListAtom.reportWrite(value, super.latlngList, () {
      super.latlngList = value;
    });
  }

  final _$getAllDispensariesAsyncAction =
      AsyncAction('_MapState.getAllDispensaries');

  @override
  Future<List<DispensaryModel>> getAllDispensaries() {
    return _$getAllDispensariesAsyncAction
        .run(() => super.getAllDispensaries());
  }

  @override
  String toString() {
    return '''
latlngList: ${latlngList}
    ''';
  }
}
