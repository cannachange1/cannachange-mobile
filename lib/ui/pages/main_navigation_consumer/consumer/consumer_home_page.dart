import 'package:cannachange/store/dashboard/dashboard_state.dart';
import 'package:cannachange/store/personal_data_state/personal_data_state.dart';
import 'package:cannachange/ui/widgets/avatar_widget.dart';
import 'package:cannachange/ui/widgets/buttons/main_button.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../widgets/custom_app_bar.dart';

class ConsumerHomePage extends StatefulWidget {
  const ConsumerHomePage({Key? key}) : super(key: key);

  @override
  State<ConsumerHomePage> createState() => _ConsumerHomePageState();
}

class _ConsumerHomePageState extends State<ConsumerHomePage> {
  final dashboardState = GetIt.I<DashboardState>();
  final personalDataState = GetIt.I<PersonalDataState>();

  @override
  void initState() {
    super.initState();
    personalDataState.getPoints();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackButton: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Observer(
            builder: (_) => Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AvatarWidget(
                      isDispensary: false,
                      showName: true,
                    ),
                    QrImage(
                      data: personalDataState.clientModel!.qrCode!,
                      version: QrVersions.auto,
                      size: 140,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Points Earned',
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColors.darkGrey,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Divider(
                  color: AppColors.secondAccent,
                  indent: 2,
                  thickness: 3,
                ),
                const Divider(
                  thickness: 1,
                  height: 0,
                  indent: 0,
                ),
                personalDataState.consumerPointList.isEmpty
                    ? Column(
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "You didn't earn points yet",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: AppColors.darkGrey.withOpacity(.7),
                            ),
                          ),
                        ],
                      )
                    : ListView.builder(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        itemCount: personalDataState.consumerPointList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 8,
                            color: AppColors.secondAccent,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    personalDataState
                                        .consumerPointList[index].name!,
                                    style: const TextStyle(
                                        fontSize: 22.0,
                                        color: AppColors.lightGrayColor),
                                  ),
                                  if (personalDataState.consumerPointList[index]
                                              .discountCode ==
                                          null &&
                                      personalDataState.consumerPointList[index]
                                              .point! >=
                                          25)
                                    MainButton(
                                      callback: () => personalDataState
                                          .redeemPoints(personalDataState
                                              .consumerPointList[index].id!),
                                      label: 'Redeem Points',
                                    ),
                                  if (personalDataState.consumerPointList[index]
                                              .point! >=
                                          25 &&
                                      personalDataState.consumerPointList[index]
                                              .discountCode !=
                                          null)
                                    Text(
                                      personalDataState.consumerPointList[index]
                                          .discountCode!,
                                      style: const TextStyle(
                                          color: AppColors.lightGrayColor,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18),
                                    ),
                                  Stack(
                                    children: [
                                      const Icon(
                                        Icons.filter_none,
                                        size: 50,
                                        color: AppColors.lightGrayColor,
                                      ),
                                      Positioned(
                                        child: Text(
                                          personalDataState
                                              .consumerPointList[index].point!
                                              .toString(),
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 18,
                                              color: Colors.white),
                                        ),
                                        right: 8,
                                        top: 10,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Waste Saved',
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColors.darkGrey,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Divider(
                  color: AppColors.secondAccent,
                  indent: 2,
                  thickness: 3,
                ),
                const Divider(
                  thickness: 1,
                  height: 0,
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      personalDataState.clientModel!.wasteSaved.toString(),
                      style: TextStyle(
                        fontSize: 30,
                        color: AppColors.darkGrey.withOpacity(.7),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Icon(
                      Icons.scale,
                      color: AppColors.secondAccent,
                      size: 50,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
