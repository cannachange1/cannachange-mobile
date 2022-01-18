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
  TextEditingController clientNameTextController = TextEditingController();
  TextEditingController clientEmailTextController = TextEditingController();
  TextEditingController clientPhoneTextController = TextEditingController();
  TextEditingController clientPasswordTextController = TextEditingController();
  TextEditingController clientConfirmPasswordTextController =
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
              height: 30,
            ),
            Observer(
              builder: (_) => TextInput(
                controller: clientNameTextController,
                onChanged: (value) => registrationState.consumerName = value,
                textInputAction: TextInputAction.next,
                hintText: StringConst.fullName,
                errorText: registrationState.errors.consumerName,
              ),
            ),
            Observer(
              builder: (_) => TextInput(
                controller: clientEmailTextController,
                onChanged: (value) => registrationState.consumerEmail = value,
                textInputAction: TextInputAction.next,
                hintText: StringConst.email,
                errorText: registrationState.errors.consumerEmail,
              ),
            ),
            Observer(
              builder: (_) => TextInput(
                controller: clientPhoneTextController,
                onChanged: (value) =>
                    registrationState.consumerPhoneNumber = value,
                textInputAction: TextInputAction.next,
                hintText: StringConst.phoneNumber,
                keyboardType: TextInputType.phone,
                errorText: registrationState.errors.consumerPhone,
              ),
            ),
            Observer(
              builder: (_) => TextInput(
                controller: clientPasswordTextController,
                hasSuffix: true,
                onChanged: (value) =>
                    registrationState.consumerPassword = value,
                textInputAction: TextInputAction.next,
                hintText: StringConst.password,
                errorText: registrationState.errors.consumerPassword,
              ),
            ),
            Observer(
              builder: (_) => TextInput(
                controller: clientConfirmPasswordTextController,
                hasSuffix: true,
                onChanged: (value) =>
                    registrationState.consumerPasswordConfirmation = value,
                textInputAction: TextInputAction.next,
                hintText: StringConst.confirmPassword,
                errorText: registrationState.errors.consumerConfirmPassword,
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
                        value: registrationState.agreedToConsumerTermsAndConditions,
                        onChanged: (_) {
                          registrationState.setAgreedToConsumerTermsAndConditions();
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
    clientConfirmPasswordTextController.clear();
    clientPasswordTextController.clear();
    clientPhoneTextController.clear();
    clientEmailTextController.clear();
    clientNameTextController.clear();
  }

  void _launchURL() async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
}
