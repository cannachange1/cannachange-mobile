import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../data/dio.dart';
import '../data/repository/dashboard_repository.dart';
import '../store/dashboard/dashboard_state.dart';

void registerGetIt() {
  GetIt.I.registerLazySingleton<Dio>(initDio);

  GetIt.I.registerSingleton(DashboardState());
  GetIt.I.registerSingleton(DashboardRepository());

  // GetIt.I.registerSingleton(DriversState());
  // GetIt.I.registerSingleton(DriverRepository());
  //
  // GetIt.I.registerSingleton(SessionsState());
  // GetIt.I.registerSingleton(SessionsRepository());


}

void resetGetIt() {
  GetIt.I.reset();
}