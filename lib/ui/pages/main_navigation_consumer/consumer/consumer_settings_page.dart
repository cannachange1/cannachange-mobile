import 'package:auto_route/auto_route.dart';
import 'package:cannachange/router.gr.dart';
import 'package:cannachange/store/personal_data_state/personal_data_state.dart';
import 'package:cannachange/ui/widgets/avatar_widget.dart';
import 'package:cannachange/ui/widgets/buttons/main_button.dart';
import 'package:cannachange/ui/widgets/rounded_text_input.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../widgets/custom_app_bar.dart';

class ConsumerSettingsPage extends StatefulWidget {
  const ConsumerSettingsPage({Key? key}) : super(key: key);

  @override
  State<ConsumerSettingsPage> createState() => _ConsumerSettingsPageState();
}

class _ConsumerSettingsPageState extends State<ConsumerSettingsPage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController addressLine1 = TextEditingController();
  TextEditingController addressLine2 = TextEditingController();
  TextEditingController openingHours = TextEditingController();
  TextEditingController emailController = TextEditingController();

  // TextEditingController phoneNumberController = TextEditingController();

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
        appBar: CustomAppBar(
          showBackButton: false,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                      onTap: () => AutoRouter.of(context)
                          .push(const ConsumerPersonalDetailsRoute()),
                      leading: const Icon(Icons.person),
                      title: const Text(
                        'Personal Details',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.mainLogoColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Card(
                    elevation: 3,
                    child: ListTile(
                      onTap: () => AutoRouter.of(context)
                          .push(const ConsumerAccountManagementRoute()),
                      leading: const Icon(Icons.manage_accounts_outlined),
                      title: const Text(
                        'Account Management',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.mainLogoColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Card(
                    elevation: 3,
                    child: ListTile(
                      onTap: () {
                        AutoRouter.of(context)
                            .replace(const ClientAuthorizationRoute());
                      },
                      leading: const Icon(Icons.exit_to_app_outlined),
                      title: const Text(
                        'Log out',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
