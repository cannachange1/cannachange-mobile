import 'package:auto_route/auto_route.dart';
import 'package:cannachange/store/personal_data_state/personal_data_state.dart';
import 'package:cannachange/store/store_state/store_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../app_theme.dart';
import '../buttons/common_button.dart';
import '../loading.dart';
import '../text_input.dart';

class ChangePasswordDialog extends StatefulWidget {
  const ChangePasswordDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<ChangePasswordDialog> createState() => _ChangePasswordDialogState();
}

class _ChangePasswordDialogState extends State<ChangePasswordDialog> {
  final dio = GetIt.I<Dio>();
  final personalDataState = GetIt.I<PersonalDataState>();

  final TextEditingController oldPasswordTextController =
      TextEditingController();

  final TextEditingController newPasswordTextController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Observer(
        builder: (_) =>
            personalDataState.storeState.state == StoreStates.loading
                ? const Loading(
                    color: Colors.transparent,
                  )
                : SizedBox(
                    height: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextInput(
                          controller: oldPasswordTextController,
                          textInputAction: TextInputAction.next,
                          hintText: 'Enter last password',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextInput(
                          controller: newPasswordTextController,
                          textInputAction: TextInputAction.next,
                          hintText: 'Enter new password',
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        CommonButton(
                          horizontalPadding: 20,
                          callback: () => changePassword(context),
                          text: 'Save',
                          color: commonButtonColor,
                        )
                      ],
                    ),
                  ),
      ),
    );
  }

  Future<void> changePassword(BuildContext context) async {
    personalDataState.changePassword(
        oldPasswordTextController.text, newPasswordTextController.text);
    await AutoRouter.of(context).pop();
  }
}
