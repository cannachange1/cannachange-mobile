import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:cannachange/helpers/otp_code_fields.dart';
import 'package:cannachange/store/registration/registration_state.dart';
import 'package:cannachange/store/store_state/store_state.dart';
import 'package:cannachange/ui/widgets/custom_app_bar.dart';
import 'package:cannachange/ui/widgets/loading.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../helpers/storage_helper.dart';
import '../../../router.gr.dart';
import '../../../store/personal_data_state/personal_data_state.dart';

class VerifyOtpCodePage extends StatefulWidget {
  final bool isDispensary;

  const VerifyOtpCodePage({Key? key, this.isDispensary = false})
      : super(key: key);

  @override
  _VerifyOtpCodePageState createState() => _VerifyOtpCodePageState();
}

class _VerifyOtpCodePageState extends State<VerifyOtpCodePage>
    with TickerProviderStateMixin {
  final registrationState = GetIt.I<RegistrationState>();
  TextEditingController textEditingController = TextEditingController();
  late StreamController<ErrorAnimationType> errorController;
  final personalDataState = GetIt.I<PersonalDataState>();

  @override
  void initState() {
    super.initState();
    errorController = StreamController<ErrorAnimationType>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Observer(
        builder: (_) => registrationState.storeState.state ==
                StoreStates.loading
            ? const Loading(
                color: Colors.transparent,
              )
            : SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Please verify your phone number',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.secondAccent),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        widget.isDispensary
                            ? "We've sent a code to ${registrationState.dispensaryPhoneNumber}"
                            : "We've sent a code to ${registrationState.consumerPhoneNumber}",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.secondAccent),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () =>
                            registrationState.resendCode(widget.isDispensary),
                        child: const Text(
                          'Resend SMS',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Spacer(),
                      OtpCodeFields(
                        controller: textEditingController,
                        appContext: context,
                        // errorAnimationController: errorController,
                        pastedTextStyle: const TextStyle(
                          color: AppColors.secondAccent,
                          fontWeight: FontWeight.bold,
                        ),
                        length: 6,
                        animationType: AnimationType.fade,
                        cursorColor: AppColors.darkGrey,
                        animationDuration: const Duration(milliseconds: 300),
                        keyboardType: TextInputType.number,
                        onCompleted: (_) async {
                          final res = await registrationState.activateAccount(
                              widget.isDispensary,
                              context,
                              textEditingController.text);
                          // textEditingController.clear();
                          // AutoRouter.of(context)
                          //     .replace(const AuthorizationRoute());
                        },
                        onChanged: (value) {},
                        beforeTextPaste: (text) {
                          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                          //but you can show anything you want here, like your pop up saying wrong paste format or etc
                          return true;
                        },
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
