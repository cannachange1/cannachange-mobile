import 'package:cannachange/helpers/screen_size_accessor.dart';
import 'package:cannachange/store/dashboard/dashboard_state.dart';
import 'package:cannachange/store/personal_data_state/personal_data_state.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final dashboardState = GetIt.I<DashboardState>();
  final personalDataState = GetIt.I<PersonalDataState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dispensary Name: ${personalDataState.dispensaryModel!.name}',
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.darkGrey,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Dispensary Address: ${personalDataState.dispensaryModel!.addressLine1}',
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.darkGrey,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Dispensary Hours: ${personalDataState.dispensaryModel!.workingHours}',
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.darkGrey,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: Text(
                'Scan QR',
                style: TextStyle(
                  fontSize: 30,
                  color: AppColors.darkGrey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Icon(
                Icons.qr_code_scanner_rounded,
                size: 100,
                color: AppColors.secondAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
