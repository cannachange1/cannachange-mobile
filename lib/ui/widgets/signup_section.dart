

import 'package:cannachange/store/registration/registration_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:nil/nil.dart';

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
  TextEditingController firstNameTextController = TextEditingController();
  TextEditingController lastNameTextController = TextEditingController();
  TextEditingController phoneTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController confirmPasswordTextController = TextEditingController();

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
            Observer(
              builder: (_) => TextInput(
                controller: firstNameTextController,
                onChanged: (value) => registrationState.firstName = value,
                textInputAction: TextInputAction.next,
                hintText: StringConst.name,
                errorText: registrationState.errors.firstName,
              ),
            ),
            Observer(
              builder: (_) => TextInput(
                controller: lastNameTextController,
                onChanged: (value) => registrationState.lastName = value,
                textInputAction: TextInputAction.next,
                hintText: StringConst.surname,
                errorText: registrationState.errors.lastName,
              ),
            ),
            Observer(
              builder: (_) => TextInput(
                controller: phoneTextController,
                onChanged: (value) => registrationState.phoneNumber = value,
                textInputAction: TextInputAction.next,
                hintText: StringConst.phoneNumber,
                keyboardType: TextInputType.phone,
                errorText: registrationState.errors.phoneNumber,
              ),
            ),
            Observer(
              builder: (_) => TextInput(
                controller: emailTextController,
                onChanged: (value) => registrationState.email = value,
                textInputAction: TextInputAction.next,
                hintText: StringConst.email,
                errorText: registrationState.errors.email,
              ),
            ),
            Observer(
              builder: (_) => TextInput(
                controller: passwordTextController,
                hasSuffix: true,
                onChanged: (value) => registrationState.password = value,
                textInputAction: TextInputAction.next,
                hintText: StringConst.password,
                errorText: registrationState.errors.password,
              ),
            ),
            Observer(
              builder: (_) => TextInput(
                controller: confirmPasswordTextController,
                hasSuffix: true,
                onChanged: (value) =>
                    registrationState.passwordConfirmation = value,
                textInputAction: TextInputAction.next,
                hintText: StringConst.confirmPassword,
                errorText: registrationState.errors.confirmPassword,
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Divider(
                color: AppColors.pastelGreenColor,
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: SizedBox(
                height: 20,
                child: Row(
                  children: [
                    Observer(
                      builder: (_) => Theme(
                        data: ThemeData(
                            unselectedWidgetColor:
                                AppColors.pastelGreenColor),
                        child: Checkbox(
                          activeColor: AppColors.pastelGreenColor,
                          checkColor: AppColors.pastelGreenColor,
                          value: registrationState.agreedToTermsAndConditions,
                          onChanged: (_) {
                            registrationState.setAgreedToTermsAndConditions();
                          },
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 20,
                    //   child: GestureDetector(
                    //     onTap: () => _launchURL,
                    //     child: const Text.rich(
                    //       TextSpan(
                    //         text: 'I agree with ',
                    //         style: TextStyle(
                    //             fontSize: 14, color: AppColors.pastelGreenColor),
                    //         children: <TextSpan>[
                    //           TextSpan(
                    //             text: 'Terms & Conditions',
                    //             style: TextStyle(
                    //               color: AppColors.pastelGreenColor,
                    //               decoration: TextDecoration.underline,
                    //             ),
                    //           ),
                    //           // can add more TextSpans here...
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 8),
              child: SizedBox(
                height: 20,
                child: Row(
                  children: [
                    Observer(
                      builder: (_) => Theme(
                        data: ThemeData(
                            unselectedWidgetColor:
                                AppColors.pastelGreenColor),
                        child: Checkbox(
                          activeColor: AppColors.pastelGreenColor,
                          checkColor: AppColors.pastelGreenColor,
                          value: registrationState.agreedToSmsNotification,
                          onChanged: (_) {
                            registrationState.setAgreedToSmsNotification();
                          },
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 20,
                    //   child: GestureDetector(
                    //     onTap: () => _launchURL,
                    //     child: const Text.rich(
                    //       TextSpan(
                    //         text: 'I agree to receive SMS ',
                    //         style: TextStyle(
                    //             fontSize: 14, color: AppColors.pastelGreenColor),
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void resetControllers() {
    phoneTextController.clear();
    confirmPasswordTextController.clear();
    passwordTextController.clear();
    emailTextController.clear();
    lastNameTextController.clear();
    firstNameTextController.clear();
  }

  // void _launchURL() async => await canLaunch(_url)
  //     ? await launch(_url)
  //     : throw 'Could not launch $_url';
}
