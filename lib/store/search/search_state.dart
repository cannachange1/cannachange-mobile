import 'package:cannachange/data/repository/search_repository.dart';
import 'package:cannachange/model/dispensary/dispensary_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../store_state/store_state.dart';

part 'search_state.g.dart';

class SearchState = _SearchState with _$SearchState;

abstract class _SearchState with Store {
  final searchRepo = SearchRepository();
  final StoreState storeState = StoreState();

  @observable
  ObservableList<DispensaryModel> filteredDispensariesList =
      <DispensaryModel>[].asObservable();

  @observable
  String searchKey = '';

  @observable
  bool hasNextPage = false;

  @action
  Future<void> getDispensaries(
    String searchKey,
    int pageKey,
  ) async {
    try {
      final res = await searchRepo.getDispensaries(
        searchKey,
        pageKey,
      );
      hasNextPage = res.hasNextPage;
      filteredDispensariesList
        ..clear()
        ..addAll(res.dispensaryList);
    } on DioError catch (e) {
      return Future.error(e.response!.data('title'));
    }
  }
}
