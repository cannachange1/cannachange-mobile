import 'package:auto_route/auto_route.dart';
import 'package:cannachange/data/repository/personal_data_repository.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../buttons/common_button.dart';
import '../text_input.dart';

class SendEmailDialog extends StatefulWidget {
  const SendEmailDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<SendEmailDialog> createState() => _SendEmailDialogState();
}

class _SendEmailDialogState extends State<SendEmailDialog> {
  final PersonalDataRepository personalDataRepository = PersonalDataRepository();
  final TextEditingController emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
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
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Please enter an email which you have used during registration',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      color: AppColors.darkGrey,
                      fontWeight: FontWeight.w700),
                ),
              ),
              TextInput(
                controller: emailTextController,
                textInputAction: TextInputAction.next,
                hintText: 'Enter your email',
              ),
              // CommonButton(
              //   horizontalPadding: 20,
              //   callback: () async => {
              //     userRepository.forgetPasswordInit(emailTextController.text),
              //     showDialog(
              //         context: context,
              //         useRootNavigator: false,
              //         builder: (context) => ResetPasswordCodeDialog(
              //               userRepository: userRepository,
              //             )).then(
              //       (value) => AutoRouter.of(context).pop(),
              //     ),
              //   },
              //   text: 'Send',
              //   color: AppColors.darkBlueColor,
              // ),
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
