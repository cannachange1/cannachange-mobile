import 'package:cannachange/store/dashboard/dashboard_state.dart';
import 'package:cannachange/store/personal_data_state/personal_data_state.dart';
import 'package:cannachange/ui/widgets/avatar_widget.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
          child: Observer(
            builder: (_) => Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
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
                ),
                const SizedBox(
                  height: 8,
                ),
                personalDataState.consumerPointList.isEmpty
                    ? Text(
                        "You didn't earn points yet",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: AppColors.darkGrey.withOpacity(.7),
                        ),
                      )
                    : ListView.builder(
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
                                    personalDataState.consumerPointList[index]
                                        .dispensary!.name!,
                                    style: const TextStyle(
                                        fontSize: 22.0,
                                        color: AppColors.lightGrayColor),
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
