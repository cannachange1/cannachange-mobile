import 'package:cannachange/helpers/screen_size_accessor.dart';
import 'package:cannachange/store/dashboard/dashboard_state.dart';
import 'package:cannachange/store/personal_data_state/personal_data_state.dart';
import 'package:cannachange/store/store_state/store_state.dart';
import 'package:cannachange/ui/widgets/avatar_widget.dart';
import 'package:cannachange/ui/widgets/buttons/main_button.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../widgets/custom_app_bar.dart';
import '../../../widgets/loading.dart';

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
            builder: (_) => personalDataState.storeState.state ==
                    StoreStates.loading
                ? const Loading(
                    color: Colors.transparent,
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Text(
                            'Points Earned',
                            style: TextStyle(
                              fontSize: 20,
                              color: AppColors.darkGrey,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                                onTap: () => personalDataState.getPoints(),
                                child: const Icon(
                                  Icons.refresh,
                                  size: 50,
                                )),
                          ),
                        ],
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
                              itemCount:
                                  personalDataState.consumerPointList.length,
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
                                        SizedBox(
                                          width: screenWidth(context) * .2,
                                          child: Text(
                                            personalDataState
                                                .consumerPointList[index].name!,
                                            style: const TextStyle(
                                                fontSize: 18,
                                                color:
                                                    AppColors.lightGrayColor),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        if (personalDataState
                                                    .consumerPointList[index]
                                                    .discountCode ==
                                                null &&
                                            personalDataState
                                                    .consumerPointList[index]
                                                    .point! >=
                                                25)
                                          MainButton(
                                            callback: () async {
                                              await personalDataState
                                                  .redeemPoints(
                                                      personalDataState
                                                          .consumerPointList[
                                                              index]
                                                          .id!);
                                              personalDataState.getPoints();
                                            },
                                            color: AppColors.mainLogoColor,
                                            label: 'Redeem Points',
                                          ),
                                        if (personalDataState
                                                    .consumerPointList[index]
                                                    .point! >=
                                                25 ||
                                            personalDataState
                                                    .consumerPointList[index]
                                                    .discountCode !=
                                                null)
                                          Text(
                                            personalDataState
                                                .consumerPointList[index]
                                                .discountCode!,
                                            style: const TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                color: AppColors.lightGrayColor,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 18),
                                          ),
                                        Row(
                                          children: [
                                            Text(
                                              personalDataState
                                                  .consumerPointList[index]
                                                  .point!
                                                  .toString(),
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 18,
                                                  color: Colors.white),
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            const FaIcon(
                                              FontAwesomeIcons.coins,
                                              color: AppColors.lightGrayColor,
                                              size: 30,
                                            ),
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
                            personalDataState.clientModel!.wasteSaved
                                .toString(),
                            style: TextStyle(
                              fontSize: 30,
                              color: AppColors.darkGrey.withOpacity(.7),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const FaIcon(
                            FontAwesomeIcons.balanceScale,
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
