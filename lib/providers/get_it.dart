import 'package:cannachange/data/repository/authorization_repository.dart';
import 'package:cannachange/data/repository/personal_data_repository.dart';
import 'package:cannachange/data/repository/search_repository.dart';
import 'package:cannachange/store/personal_data_state/personal_data_state.dart';
import 'package:cannachange/store/registration/registration_state.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../data/dio.dart';
import '../data/repository/dashboard_repository.dart';
import '../store/dashboard/dashboard_state.dart';
import '../store/search/search_state.dart';

void registerGetIt() {
  GetIt.I.registerLazySingleton<Dio>(initDio);

  GetIt.I.registerSingleton(DashboardState());
  GetIt.I.registerSingleton(DashboardRepository());

  GetIt.I.registerSingleton(PersonalDataState());
  GetIt.I.registerSingleton(PersonalDataRepository());

  GetIt.I.registerSingleton(RegistrationState());
  GetIt.I.registerSingleton(AuthenticationRepo());

  GetIt.I.registerSingleton(SearchState());
  GetIt.I.registerSingleton(SearchRepository());


}

void resetGetIt() {
  GetIt.I.reset();
}