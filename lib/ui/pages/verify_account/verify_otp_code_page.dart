import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:cannachange/store/registration/registration_state.dart';
import 'package:cannachange/ui/widgets/loading.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../router.gr.dart';

class VerifyOtpCodePage extends StatefulWidget {
  const VerifyOtpCodePage({Key? key}) : super(key: key);


  @override
  _VerifyOtpCodePageState createState() => _VerifyOtpCodePageState();
}

class _VerifyOtpCodePageState extends State<VerifyOtpCodePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  // final authorizationState = GetIt.I<RegistrationState>();
  // TextEditingController textEditingController = TextEditingController();
  // late StreamController<ErrorAnimationType> errorController;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   errorController = StreamController<ErrorAnimationType>();
  // }
  //
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Observer(
  //       builder: (_) => authorizationState.loadingState.loading
  //           ? const Loading(
  //               color: Colors.transparent,
  //             )
  //           : SafeArea(
  //               child: Padding(
  //                 padding:
  //                     const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
  //                 child: Column(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   crossAxisAlignment: CrossAxisAlignment.center,
  //                   children: [
  //                     const SizedBox(
  //                       height: 20,
  //                     ),
  //                     const Text(
  //                       'Verify phone number',
  //                       textAlign: TextAlign.center,
  //                       style: TextStyle(
  //                           fontSize: 20,
  //                           fontWeight: FontWeight.w700),
  //                     ),
  //                     const SizedBox(
  //                       height: 20,
  //                     ),
  //                     InkWell(
  //                       onTap: () => authorizationState.register(context),
  //                       child: const Text(
  //                         'Resend SMS',
  //                         textAlign: TextAlign.center,
  //                       ),
  //                     ),
  //                     const Spacer(),
  //                     OtpCodeFields(
  //                       controller: textEditingController,
  //                       appContext: context,
  //                       errorAnimationController: errorController,
  //                       pastedTextStyle: const TextStyle(
  //                         color: AppColors.yellow450,
  //                         fontWeight: FontWeight.bold,
  //                       ),
  //                       length: 6,
  //                       animationType: AnimationType.fade,
  //                       cursorColor: AppColors.black,
  //                       animationDuration: const Duration(milliseconds: 300),
  //                       keyboardType: TextInputType.number,
  //                       onCompleted: (_) {
  //                         authorizationState.activateAccount(context, textEditingController.text);
  //                        // textEditingController.clear();
  //                         AutoRouter.of(context).replace(const AuthorizationRoute());
  //                       },
  //                       onChanged: (value) {
  //                       },
  //                       beforeTextPaste: (text) {
  //                         //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
  //                         //but you can show anything you want here, like your pop up saying wrong paste format or etc
  //                         return true;
  //                       },
  //                     ),
  //                     const Spacer(
  //                       flex: 2,
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //     ),
  //   );
  // }
}
