import 'dart:io';

import 'package:cannachange/data/exceptions/general_exceptions.dart';
import 'package:cannachange/model/dispensary/dispensary_model.dart';
import 'package:cannachange/model/point_model/point_model.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapRepository {
  final dio = GetIt.I<Dio>();


  ///////////**********/////////////

  Future<List<DispensaryModel>?> getAllDispensaries() async {
    try {
      final res = await dio.get(
        'mobile/dispensaries/all',
      );

      final List<DispensaryModel> list = res.data.map((i) => DispensaryModel.fromJson(i))
          .toList().cast<DispensaryModel>();
      print('aaaaassaaaa $list');

      return list;
    } on DioError catch (e) {
      handleError(e);
    }
  }

}