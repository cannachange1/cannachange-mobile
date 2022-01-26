import 'package:cannachange/store/dashboard/dashboard_state.dart';
import 'package:cannachange/store/personal_data_state/personal_data_state.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class SearchDispensaryPage extends StatefulWidget {
  const SearchDispensaryPage({Key? key}) : super(key: key);

  @override
  State<SearchDispensaryPage> createState() => _SearchDispensaryPageState();
}

class _SearchDispensaryPageState extends State<SearchDispensaryPage> {
  final dashboardState = GetIt.I<DashboardState>();
  final personalDataState = GetIt.I<PersonalDataState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [],
        ),
      ),
    );
  }
}
