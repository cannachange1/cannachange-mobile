import 'package:auto_route/auto_route.dart';
import 'package:cannachange/helpers/screen_size_accessor.dart';
import 'package:cannachange/store/dashboard/dashboard_state.dart';
import 'package:cannachange/store/personal_data_state/personal_data_state.dart';
import 'package:cannachange/ui/widgets/custom_app_bar.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../router.gr.dart';

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
      appBar: CustomAppBar(
        showBackButton: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'Dispensary Name: ',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.darkGrey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    personalDataState.dispensaryModel!.businessName!,
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.secondAccent,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  const Text(
                    'Dispensary Address: ',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.darkGrey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    personalDataState.dispensaryModel!.address1! +
                        ' ' +
                        personalDataState.dispensaryModel!.address2!,
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.secondAccent,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  const Text(
                    'Dispensary Hours: ',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.darkGrey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    personalDataState.dispensaryModel!.startHour! +
                        ' - ' +
                        personalDataState.dispensaryModel!.endHour!,
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.secondAccent,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Center(
                child: Text(
                  'Scan QR',
                  style: TextStyle(
                    fontSize: 30,
                    color: AppColors.mainLogoColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () => AutoRouter.of(context).push(const QrScannerView()),
                child: Center(
                  child: Icon(
                    Icons.qr_code_scanner_rounded,
                    size: screenWidth(context) * .5,
                    color: AppColors.secondAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
