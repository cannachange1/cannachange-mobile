import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cannachange/store/registration/registration_state.dart';
import 'package:cannachange/ui/widgets/avatar_widget.dart';
import 'package:cannachange/ui/widgets/buttons/main_button.dart';
import 'package:cannachange/ui/widgets/text_input.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';

import '../../../store/dashboard/dashboard_state.dart';
import '../../../store/personal_data_state/personal_data_state.dart';

class AddPointsDialog extends StatefulWidget {
  const AddPointsDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<AddPointsDialog> createState() => _AddPointsDialogState();
}

class _AddPointsDialogState extends State<AddPointsDialog> {
  final dashboardState = GetIt.I<DashboardState>();
  final personalState = GetIt.I<PersonalDataState>();
  TextEditingController pointAmountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Align(
                child: Text(
                  StringConst.addPoints,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.secondAccent.withOpacity(.85),
                      height: 2,
                      fontSize: 22,
                      fontWeight: FontWeight.w800),
                ),
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.network(
                    dashboardState.scannedUser!.imageUrl!,
                    fit: BoxFit.cover,
                    height: 90,
                    width: 90,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextInput(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                controller: pointAmountController,
                hintText: 'Example 15',
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            MainButton(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              callback: () async {
                personalState.addPoints(int.parse(pointAmountController.text),
                    dashboardState.scannedQR);
                AutoRouter.of(context).pop();
              },
              label: 'Submit',
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
