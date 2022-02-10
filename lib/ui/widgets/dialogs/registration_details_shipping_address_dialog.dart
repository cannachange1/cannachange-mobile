import 'package:auto_route/auto_route.dart';
import 'package:cannachange/store/registration/registration_state.dart';
import 'package:cannachange/ui/widgets/buttons/main_button.dart';
import 'package:cannachange/ui/widgets/dialogs/registration_details_working_hours_dialog.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../text_input.dart';

class RegistrationDetailsShippingAddressDialog extends StatefulWidget {
  const RegistrationDetailsShippingAddressDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<RegistrationDetailsShippingAddressDialog> createState() =>
      _RegistrationDetailsShippingAddressDialogState();
}

class _RegistrationDetailsShippingAddressDialogState
    extends State<RegistrationDetailsShippingAddressDialog> {
  final registrationState = GetIt.I<RegistrationState>();
  TimeOfDay pickedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        height: 340,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40, left: 40, bottom: 10),
              child: Text(
                'To complete registration, please indicate',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.secondAccent.withOpacity(.85),
                    fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 40, left: 40, bottom: 10, top: 0),
              child: Align(
                child: Text(
                  StringConst.shippingAddress,
                  style: TextStyle(
                      color: AppColors.secondAccent.withOpacity(.85),
                      height: 2,
                      fontWeight: FontWeight.w600),
                ),
                alignment: Alignment.centerLeft,
              ),
            ),
            TextInput(
              hasLightWeight: true,
              onChanged: (value) =>
                  registrationState.dispensaryShippingAddress1 = value,
              textInputAction: TextInputAction.next,
              hintText: StringConst.line1,
            ),
            const SizedBox(
              height: 4,
            ),
            TextInput(
              hasLightWeight: true,
              onChanged: (value) =>
                  registrationState.dispensaryShippingAddress2 = value,
              textInputAction: TextInputAction.next,
              hintText: StringConst.line2,
              //errorText: '\n',

              //errorText: registrationState.errors.dispensaryAddress,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 0),
              child: Row(
                children: [
                  Observer(
                    builder: (_) => Theme(
                      data: ThemeData(
                          unselectedWidgetColor: AppColors.secondAccent),
                      child: Checkbox(
                        activeColor: AppColors.secondAccent,
                        checkColor: AppColors.lightGrayColor,
                        value: registrationState.isShippingAddressTheSame,
                        onChanged: (_) {
                          registrationState.setAgreedToShipSameAddress();
                        },
                      ),
                    ),
                  ),
                  const Text.rich(
                    TextSpan(
                      text: 'Use dispensary address as',
                      style: TextStyle(fontSize: 14, color: AppColors.darkGrey),
                      children: <TextSpan>[
                        TextSpan(
                          text: '\n shipping address',
                          style: TextStyle(
                            color: AppColors.secondAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Observer(
              builder: (_) => MainButton(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                callback: registrationState.isShippingAddressTheSame ||
                        registrationState.dispensaryShippingAddress1!.isNotEmpty
                    ? () async {
                        await AutoRouter.of(context).pop();
                        showDialog(
                            context: context,
                            useRootNavigator: false,
                            builder: (context) =>
                                const RegistrationDetailsWorkingHoursDialog());
                      }
                    : null,
                // await registrationState.register(context);

                label: 'DONE',
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
