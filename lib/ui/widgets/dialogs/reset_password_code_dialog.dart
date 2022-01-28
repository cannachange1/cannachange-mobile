import 'package:auto_route/auto_route.dart';
import 'package:cannachange/store/personal_data_state/personal_data_state.dart';
import 'package:cannachange/store/store_state/store_state.dart';
import 'package:cannachange/ui/widgets/buttons/main_button.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../helpers/overlay_helper.dart';
import '../buttons/common_button.dart';
import '../loading.dart';
import '../text_input.dart';

class ResetPasswordCodeDialog extends StatefulWidget {
  const ResetPasswordCodeDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<ResetPasswordCodeDialog> createState() =>
      _ResetPasswordCodeDialogState();
}

class _ResetPasswordCodeDialogState extends State<ResetPasswordCodeDialog> {
  final personalDataState = GetIt.I<PersonalDataState>();

  final TextEditingController newPasswordTextController =
      TextEditingController();

  final TextEditingController activationCodeTextController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Observer(
        builder: (_) => personalDataState.storeState.state ==
                StoreStates.loading
            ? const Loading(
                color: Colors.transparent,
              )
            : SizedBox(
                height: 280,
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        TextInput(
                          controller: activationCodeTextController,
                          textInputAction: TextInputAction.next,
                          hintText: 'Please enter activation code',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextInput(
                          controller: newPasswordTextController,
                          hintText: 'Please enter new password',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        MainButton(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          callback: () async {
                            if (newPasswordTextController.text.length >= 6 &&
                                activationCodeTextController.text.isNotEmpty) {
                              await personalDataState.forgetPasswordFinish(
                                  activationCodeTextController.text,
                                  newPasswordTextController.text);
                              await AutoRouter.of(context).pop();
                            } else {
                              showCustomOverlayNotification(
                                color: AppColors.errorRed,
                                text: 'Credentials are not correct',
                              );
                            }
                          },
                          label: 'DONE',
                        ),
                        const SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                    // Visibility(
                    //     visible: loadingState.loading,
                    //     child: Container(
                    //       padding: const EdgeInsets.all(8),
                    //       child: const Loading(),
                    //     ))
                  ],
                ),
              ),
      ),
    );
  }
}
