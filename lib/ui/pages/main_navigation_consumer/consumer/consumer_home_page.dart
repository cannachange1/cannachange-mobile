import 'package:cannachange/store/dashboard/dashboard_state.dart';
import 'package:cannachange/store/personal_data_state/personal_data_state.dart';
import 'package:cannachange/ui/widgets/avatar_widget.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ConsumerHomePage extends StatefulWidget {
  const ConsumerHomePage({Key? key}) : super(key: key);

  @override
  State<ConsumerHomePage> createState() => _ConsumerHomePageState();
}

class _ConsumerHomePageState extends State<ConsumerHomePage> {
  final dashboardState = GetIt.I<DashboardState>();
  final personalDataState = GetIt.I<PersonalDataState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AvatarWidget(isDispensary: false,),
                  QrImage(
                    data: personalDataState.clientModel!.qrCode!,
                    version: QrVersions.auto,
                    size: 120,
                  ),
                ],
              ),
              const Text(
                'Points Earned',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.darkGrey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, position) {
                  return Card(
                    elevation: 8,
                    color: AppColors.secondAccent,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'name',
                            style: TextStyle(fontSize: 22.0, color: AppColors.lightGrayColor),
                          ),
                          Stack(
                            children: const [
                              Icon(
                                Icons.filter_none,
                                size: 50,
                                color: AppColors.lightGrayColor,
                              ),
                              Positioned(
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 24,
                                      color: AppColors.darkGrey),
                                ),
                                right: 12,
                                top: 6,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Row(
                children: [
                  const Text(
                    'Dispensary Address: ',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.darkGrey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    personalDataState.dispensaryModel!.address1 ?? '',
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.secondAccent,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    'Dispensary Hours:',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.darkGrey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '${personalDataState.dispensaryModel!.startHour} - ${personalDataState.dispensaryModel!.endHour}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.secondAccent,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
