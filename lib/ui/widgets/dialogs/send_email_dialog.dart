import 'package:auto_route/auto_route.dart';
import 'package:cannachange/data/repository/personal_data_repository.dart';
import 'package:cannachange/store/personal_data_state/personal_data_state.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../buttons/common_button.dart';
import '../text_input.dart';
import 'reset_password_code_dialog.dart';

class SendEmailDialog extends StatefulWidget {
  const SendEmailDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<SendEmailDialog> createState() => _SendEmailDialogState();
}

class _SendEmailDialogState extends State<SendEmailDialog> {
  final TextEditingController emailTextController = TextEditingController();
  final personalDataState = GetIt.I<PersonalDataState>();

  @override
  Widget build(BuildContext context) {
    return Dialog(
    //  backgroundColor: AppColors.mainLogoColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        height: 280,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 2,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Please enter the email registered under your cannachange account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      color: AppColors.mainLogoColor,
                      fontWeight: FontWeight.w700),
                ),
              ),
              TextInput(
                controller: emailTextController,
                textInputAction: TextInputAction.next,
                hintText: 'Enter your email',
                hintColor: AppColors.secondAccent,
              ),
              CommonButton(
                horizontalPadding: 20,
                callback: () async => {
                  personalDataState
                      .forgetPasswordInit(emailTextController.text),
                  showDialog(
                          context: context,
                          useRootNavigator: false,
                          builder: (context) => const ResetPasswordCodeDialog())
                      .then(
                    (value) => AutoRouter.of(context).pop(),
                  ),
                },
                text: 'Send',
                color: AppColors.secondAccent,
              ),
              const SizedBox(
                height: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
