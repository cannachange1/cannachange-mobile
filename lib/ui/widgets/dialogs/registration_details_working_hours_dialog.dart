import 'package:cannachange/store/registration/registration_state.dart';
import 'package:cannachange/ui/widgets/buttons/main_button.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';


class RegistrationDetailsWorkingHoursDialog extends StatefulWidget {
  const RegistrationDetailsWorkingHoursDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<RegistrationDetailsWorkingHoursDialog> createState() =>
      _RegistrationDetailsWorkingHoursDialogState();
}

class _RegistrationDetailsWorkingHoursDialogState
    extends State<RegistrationDetailsWorkingHoursDialog> {
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
                  StringConst.dispensaryHours,
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Observer(
                      builder: (_) => Text(
                        registrationState.dispensaryStartHours ?? 'Open at',
                        style: TextStyle(
                          color: AppColors.secondAccent.withOpacity(.85),
                          height: 2,
                        ),
                      ),
                    ),
                    onTap: () => _selectTime(context, true),
                  ),
                  GestureDetector(
                    child: Observer(
                      builder: (_) => Text(
                        registrationState.dispensaryEndHours ?? 'Close at',
                        style: TextStyle(
                          color: AppColors.secondAccent.withOpacity(.85),
                          height: 2,
                        ),
                      ),
                    ),
                    onTap: () => _selectTime(context, false),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            MainButton(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              callback: () async {
                await registrationState.registerDispensary(context);
              },
              label: 'DONE',
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }

  Future<void> _selectTime(BuildContext context, bool isStartingDate) async {
    final TimeOfDay? response = await showTimePicker(
      context: context,
      initialTime: pickedTime,
    );
    if (response != null && response != pickedTime) {
      if (isStartingDate) {
        registrationState.dispensaryStartHours = DateFormat.jm()
            .format(DateTime(1, 1, response.hour, response.minute));
      } else {
        registrationState.dispensaryEndHours = DateFormat.jm()
            .format(DateTime(1, 1, response.hour, response.minute));
      }
      //
      // setState(() {
      //   pickedTime = response;
      // });
    }
  }
}
