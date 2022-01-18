import 'package:cannachange/store/registration/registration_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:nil/nil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../values/values.dart';
import 'text_input.dart';

class ClientSignUpSection extends StatefulWidget {
  const ClientSignUpSection({
    Key? key,
  }) : super(key: key);

  @override
  State<ClientSignUpSection> createState() => _ClientSignUpSectionState();
}

class _ClientSignUpSectionState extends State<ClientSignUpSection> {
  TextEditingController fullNameTextController = TextEditingController();
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
            const SizedBox(
              height: 30,
            ),
            Observer(
              builder: (_) => TextInput(
                controller: fullNameTextController,
                onChanged: (value) => registrationState.lastName = value,
                textInputAction: TextInputAction.next,
                hintText: StringConst.fullName,
                errorText: registrationState.errors.lastName,
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
                        value: registrationState.agreedToTermsAndConditions,
                        onChanged: (_) {
                          registrationState.setAgreedToTermsAndConditions();
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
    phoneTextController.clear();
    confirmPasswordTextController.clear();
    passwordTextController.clear();
    emailTextController.clear();
    fullNameTextController.clear();
  }

  void _launchURL() async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
}
