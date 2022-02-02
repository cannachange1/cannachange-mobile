import 'package:cannachange/store/registration/registration_state.dart';
import 'package:cannachange/ui/widgets/avatar_widget.dart';
import 'package:cannachange/ui/widgets/buttons/main_button.dart';
import 'package:cannachange/ui/widgets/text_input.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';

class AddPointsDialog extends StatefulWidget {
  const AddPointsDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<AddPointsDialog> createState() => _AddPointsDialogState();
}

class _AddPointsDialogState extends State<AddPointsDialog> {
  final registrationState = GetIt.I<RegistrationState>();
  TimeOfDay pickedTime = TimeOfDay.now();
  TextEditingController startHourController = TextEditingController();
  TextEditingController endHourController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        height: 200,
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
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                ),
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const AvatarWidget(
              isDispensary: false,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: TextInput(hintText: '10',),
            ),
            const SizedBox(
              height: 40,
            ),
            MainButton(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              callback: () async {
                await registrationState.registerDispensary(context);
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
