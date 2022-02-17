import 'package:auto_route/auto_route.dart';
import 'package:cannachange/store/personal_data_state/personal_data_state.dart';
import 'package:cannachange/store/store_state/store_state.dart';
import 'package:cannachange/ui/pages/main_navigation_consumer/dispenser/account_details_page.dart';
import 'package:cannachange/ui/widgets/buttons/common_button.dart';
import 'package:cannachange/ui/widgets/buttons/main_button.dart';
import 'package:cannachange/ui/widgets/custom_app_bar.dart';
import 'package:cannachange/ui/widgets/dialogs/change_password_dialog.dart';
import 'package:cannachange/ui/widgets/rounded_text_input.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../helpers/overlay_helper.dart';
import '../../../../helpers/storage_helper.dart';
import '../../../../router.gr.dart';
import '../../../../store/dashboard/dashboard_state.dart';
import '../../../widgets/loading.dart';

class ConsumerAccountManagementPage extends StatefulWidget {
  const ConsumerAccountManagementPage({Key? key}) : super(key: key);

  @override
  State<ConsumerAccountManagementPage> createState() =>
      _ConsumerAccountManagementPageState();
}

class _ConsumerAccountManagementPageState
    extends State<ConsumerAccountManagementPage> {
  final personalDataState = GetIt.I<PersonalDataState>();
  final dashboardState = GetIt.I<DashboardState>();

  bool pushNotifications = false;

  @override
  void initState() {
    super.initState();
    //getUserInfo();
  }

  // Future<void> getUserInfo() async {
  //   // await personalDataState.getUser();
  //   // _updateTextController(personalDataState.user!);
  // }
  //
  // _updateTextController(DispensaryModel user) {
  //   nameController.text = user.firstName;
  //   lastNameController.text = user.lastName;
  //   phoneNumberController.text = user.phone;
  //
  //   if (user.email != null) {
  //     emailController.text = user.email!;
  //   }
  //   if (user.country != null) {
  //     countryController.text = user.country!;
  //   }
  //   if (user.city != null) {
  //     cityController.text = user.city!;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: Observer(
          builder: (_) => personalDataState.storeState.state ==
                  StoreStates.loading
              ? const Loading(
                  color: Colors.transparent,
                )
              : SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 18,
                          ),
                          Card(
                              elevation: 3,
                              child: ListTile(
                                trailing: CupertinoSwitch(
                                  activeColor: AppColors.secondAccent,
                                  trackColor: AppColors.secondAccent,
                                  value: pushNotifications,
                                  onChanged: (value) {
                                    pushNotifications = true;
                                    setState(() async {
                                      final token =
                                          await StorageHelper.getFCMToken();
                                      dashboardState.deleteToken(token);
                                      showCustomOverlayNotification(
                                          color: AppColors.secondAccent,
                                          text:
                                              'Push notifications are ${pushNotifications == true ? ' activated' : ' off'}');
                                    });
                                  },
                                ),
                                title: const Text(
                                  'Push Notifications',
                                  style: TextStyle(
                                      color: AppColors.darkGrey,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          // Card(
                          //     elevation: 3,
                          //     child: ListTile(
                          //       trailing: CupertinoSwitch(
                          //         activeColor: AppColors.secondAccent,
                          //         trackColor: AppColors.secondAccent,
                          //         value: pushNotifications,
                          //         onChanged: (value) {
                          //           setState(() {
                          //             showCustomOverlayNotification(
                          //                 color: AppColors.secondAccent,
                          //                 text:
                          //                     'Location access is${pushNotifications == true ? ' activated' : ' off'}');
                          //           });
                          //         },
                          //       ),
                          //       title: const Text(
                          //         'Location Services',
                          //         style: TextStyle(
                          //             color: AppColors.darkGrey,
                          //             fontWeight: FontWeight.bold),
                          //       ),
                          //     )),
                          Card(
                            elevation: 3,
                            color: AppColors.mainLogoColor,
                            child: ListTile(
                              onTap: () async {
                                String? token =
                                    await StorageHelper.getFCMToken();
                                personalDataState.deleteAccount(token, context);
                              },
                              leading: const Icon(
                                Icons.delete,
                                color: AppColors.lightGrayColor,
                              ),
                              title: const Text(
                                'Delete account',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: AppColors.lightGrayColor),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 3,
                            color: AppColors.mainLogoColor,
                            child: ListTile(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    useRootNavigator: false,
                                    builder: (context) =>
                                        const ChangePasswordDialog());
                              },
                              leading: const Icon(
                                Icons.password,
                                color: AppColors.lightGrayColor,
                              ),
                              title: const Text(
                                'Change password',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: AppColors.lightGrayColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
        ));
  }
}
