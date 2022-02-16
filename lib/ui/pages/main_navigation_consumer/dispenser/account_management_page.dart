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
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../helpers/storage_helper.dart';
import '../../../../router.gr.dart';
import '../../../widgets/loading.dart';

class AccountManagementPage extends StatefulWidget {
  const AccountManagementPage({Key? key}) : super(key: key);

  @override
  State<AccountManagementPage> createState() => _AccountManagementPageState();
}

class _AccountManagementPageState extends State<AccountManagementPage> {
  PersonalDataState personalDataState = PersonalDataState();

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
                          const SizedBox(
                            height: 8,
                          ),
                          Card(
                            color: AppColors.mainLogoColor,
                            child: ListTile(
                              onTap: () {
                                personalDataState.cancelSubscription(context);

                              },
                              leading: const Icon(
                                Icons.cancel_rounded,
                                color: AppColors.lightGrayColor,
                              ),
                              title: const Text(
                                'Cancel subscription',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: AppColors.lightGrayColor),
                              ),
                            ),
                          ),
                          Card(
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
