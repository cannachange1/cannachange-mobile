import 'package:cannachange/store/registration/registration_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../values/values.dart';
import 'text_input.dart';

class SignUpSection extends StatefulWidget {
  const SignUpSection({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpSection> createState() => _SignUpSectionState();
}

class _SignUpSectionState extends State<SignUpSection> {
  TextEditingController dispensaryNameTextController = TextEditingController();
  TextEditingController dispensaryAddressTextController =
      TextEditingController();
  TextEditingController dispensaryHoursTextController = TextEditingController();
  TextEditingController dispensaryEmailTextController = TextEditingController();
  TextEditingController dispensaryPhoneTextController = TextEditingController();
  TextEditingController dispensaryPasswordTextController =
      TextEditingController();
  TextEditingController dispensaryConfirmPasswordTextController =
      TextEditingController();

  final String _url =
      'http://auguricorp.com/DOXI/TC/DOXI%20TERMS%20AND%20CONDITIONS.html';
  final registrationState = GetIt.I<RegistrationState>();

  @override
  void initState() {
    super.initState();
    // registrationState.mainDocumentCategory =
    //     registrationState.mainDocumentTypeModelList[5];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(StringConst.signup, style: Styles.boldTextStyle),
        ),
        Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Observer(
              builder: (_) => TextInput(
                controller: dispensaryNameTextController,
                onChanged: (value) => registrationState.dispensaryName = value,
                textInputAction: TextInputAction.next,
                hintText: StringConst.dispensaryName,
                errorText: registrationState.errors.dispensaryName,
              ),
            ),
            Observer(
              builder: (_) => TextInput(
                controller: dispensaryAddressTextController,
                onChanged: (value) =>
                    registrationState.dispensaryAddress = value,
                textInputAction: TextInputAction.next,
                hintText: StringConst.dispensaryAddress,
                errorText: registrationState.errors.dispensaryAddress,
              ),
            ),
            Observer(
              builder: (_) => TextInput(
                controller: dispensaryHoursTextController,
                onChanged: (value) => registrationState.dispensaryHours = value,
                textInputAction: TextInputAction.next,
                hintText: StringConst.dispensaryHours,
                errorText: registrationState.errors.dispensaryHours,
              ),
            ),
            Observer(
              builder: (_) => TextInput(
                controller: dispensaryEmailTextController,
                onChanged: (value) => registrationState.dispensaryEmail = value,
                textInputAction: TextInputAction.next,
                hintText: StringConst.email,
                errorText: registrationState.errors.dispensaryEmail,
              ),
            ),
            Observer(
              builder: (_) => TextInput(
                controller: dispensaryPhoneTextController,
                onChanged: (value) =>
                    registrationState.dispensaryPhoneNumber = value,
                textInputAction: TextInputAction.next,
                hintText: StringConst.phoneNumber,
                keyboardType: TextInputType.phone,
                errorText: registrationState.errors.dispensaryPhone,
              ),
            ),
            Observer(
              builder: (_) => TextInput(
                controller: dispensaryPasswordTextController,
                hasSuffix: true,
                onChanged: (value) =>
                    registrationState.dispensaryPassword = value,
                textInputAction: TextInputAction.next,
                hintText: StringConst.password,
                errorText: registrationState.errors.dispensaryPassword,
              ),
            ),
            Observer(
              builder: (_) => TextInput(
                controller: dispensaryConfirmPasswordTextController,
                hasSuffix: true,
                onChanged: (value) =>
                    registrationState.dispensaryPasswordConfirmation = value,
                textInputAction: TextInputAction.next,
                hintText: StringConst.confirmPassword,
                errorText: registrationState.errors.dispensaryConfirmPassword,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Row(
                children: [
                  Observer(
                    builder: (_) => Theme(
                      data: ThemeData(
                          unselectedWidgetColor: AppColors.secondAccent),
                      child: Checkbox(
                        activeColor: AppColors.secondAccent,
                        checkColor: AppColors.lightGrayColor,
                        value: registrationState
                            .agreedToDispensaryTermsAndConditions,
                        onChanged: (_) {
                          registrationState
                              .setAgreedToDispensaryTermsAndConditions();
                        },
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL,
                    child: const Text.rich(
                      TextSpan(
                        text: 'I agree to the ',
                        style:
                            TextStyle(fontSize: 14, color: AppColors.darkGrey),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Terms or Services',
                            style: TextStyle(
                              color: AppColors.secondAccent,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text: ' and ',
                            style: TextStyle(
                              color: AppColors.darkGrey,
                            ),
                          ),
                          TextSpan(
                            text: '\nPrivacy Policy',
                            style: TextStyle(
                              color: AppColors.secondAccent,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  void resetControllers() {
    dispensaryNameTextController.clear();
    dispensaryAddressTextController.clear();
    dispensaryHoursTextController.clear();
    dispensaryEmailTextController.clear();
    dispensaryPhoneTextController.clear();
    dispensaryPasswordTextController.clear();
    dispensaryConfirmPasswordTextController.clear();
  }

  void _launchURL() async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
}
