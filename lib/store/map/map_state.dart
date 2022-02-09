import 'package:cannachange/data/repository/map_repository.dart';
import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobx/mobx.dart';

import '../store_state/store_state.dart';

part 'map_state.g.dart';

class MapState = _MapState with _$MapState;

abstract class _MapState with Store {
  final mapRepository = MapRepository();
  final StoreState storeState = StoreState();

  @observable
  ObservableList<LatLng> latlngList = <LatLng>[].asObservable();

  @action
  Future<List<LatLng>> getAllDispensaries() async {
    try {
      storeState.changeState(StoreStates.loading);
      final res = await mapRepository.getAllDispensaries();
      storeState.changeState(StoreStates.success);
      return res!;
    } on DioError catch (e) {
      storeState.changeState(StoreStates.error);
      return Future.error(e.response!.data('title', ));
    }
  }
}
