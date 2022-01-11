import 'package:auto_route/auto_route.dart';
import 'package:cannachange/store/login/login_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' hide TextInput;
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import '../../router.gr.dart';
import '../../values/values.dart';
import 'dialogs/send_email_dialog.dart';
import 'text_input.dart';

class LoginSection extends StatefulWidget {
  const LoginSection({
    required this.loginState,
    Key? key,
  }) : super(key: key);

  final LoginState loginState;

  @override
  State<LoginSection> createState() => _LoginSectionState();
}

class _LoginSectionState extends State<LoginSection> {
  TextEditingController phoneTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
 // PaymentRepository paymentRepository = PaymentRepository();

  // SupportState _supportState = SupportState.unknown;
  // bool? _canCheckBiometrics;
  String _authorized = 'Not Authorized';
  bool _isAuthenticating = false;
  bool isAgreedToUseBiometrics = false;
  bool hasSavedToken = false;

 // final LocalAuthentication _localAuthentication = LocalAuthentication();

  @override
  void initState() {
    super.initState();
    widget.loginState.setupValidations();
  //  _getAvailableBiometrics();
    widget.loginState.errors.resetValidationErrors();
  }

  // Future<bool> checkingForBioMetrics() async {
  //  // bool canCheckBiometrics = await _localAuthentication.canCheckBiometrics;
  //   print(canCheckBiometrics);
  //   return canCheckBiometrics;
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const Center(
          child: Text(
            StringConst.login,
            style: Styles.boldTextStyle,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Column(
          children: [
            Observer(
              builder: (_) => TextInput(
                onChanged: (value) => widget.loginState.setPhoneNumber(value),
                textInputAction: TextInputAction.next,
                hintText: StringConst.phoneNumber,
                errorText: widget.loginState.errors.phoneNumber,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Observer(
              builder: (_) => TextInput(
                hasSuffix: true,
                onChanged: (value) => widget.loginState.setPassword(value),
                errorText: widget.loginState.errors.password,
                hintText: StringConst.password,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    useRootNavigator: false,
                    builder: (context) => const SendEmailDialog());
              },
              child: Text(
                StringConst.forgotPassword,
                style: TextStyle(
                  color: AppColors.dasrkGrey,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        // if (_availableBiometrics != null &&
        //     isAgreedToUseBiometrics &&
        //     hasSavedToken)
        //   GestureDetector(
        //     onTap: () => _authenticateWithBiometrics(),
        //     child: Row(
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         _availableBiometrics!.contains(BiometricType.face)
        //             ? SvgPicture.asset(
        //                 'assets/icons/ic_faceId.svg',
        //                 width: 40,
        //                 height: 40,
        //               )
        //             : SvgPicture.asset(
        //                 'assets/icons/ic_fingerprint.svg',
        //                 width: 40,
        //                 height: 40,
        //               ),
        //         const SizedBox(
        //           width: 12,
        //         ),
        //         Text(
        //           'Use biometrics to login',
        //           style: Theme.of(context).textTheme.headline4!.copyWith(
        //                 color: AppColors.darkBlueColor,
        //                 fontSize: 18,
        //               ),
        //         ),
        //       ],
        //     ),
        //   ),
      ],
    );
  }

  // Future<void> _getAvailableBiometrics() async {
  //   isAgreedToUseBiometrics = await StorageHelper.getBiometrics();
  //   String? token = await StorageHelper.getToken();
  //   hasSavedToken = token != null;
  //   late List<BiometricType> availableBiometrics;
  //   try {
  //     availableBiometrics = await auth.getAvailableBiometrics();
  //   } on PlatformException catch (e) {
  //     availableBiometrics = <BiometricType>[];
  //   }
  //   if (!mounted) return;
  //
  //   setState(() {
  //     _availableBiometrics = availableBiometrics;
  //   });
  // }
  //
  // Future<void> _authenticateWithBiometrics() async {
  //   bool authenticated = false;
  //   try {
  //     setState(() {
  //       _isAuthenticating = true;
  //       _authorized = 'Authenticating';
  //     });
  //     authenticated = await auth.authenticate(
  //         localizedReason:
  //             'Scan your fingerprint (or face or whatever) to authenticate',
  //         useErrorDialogs: true,
  //         stickyAuth: true,
  //         biometricOnly: true);
  //     setState(() {
  //       _isAuthenticating = false;
  //       _authorized = 'Authenticating';
  //     });
  //   } on PlatformException catch (e) {
  //     setState(() {
  //       _isAuthenticating = false;
  //       _authorized = "Error - ${e.message}";
  //     });
  //     return;
  //   }
  //   if (!mounted) return;
  //
  //   final String message = authenticated ? 'Authorized' : 'Not Authorized';
  //   setState(() async {
  //     _authorized = message;
  //     if (message == 'Authorized') {
  //       PaymentStatusModel? paymentStatusModel =
  //           await paymentRepository.getPaymentStatus();
  //       await AutoRouter.of(context)
  //           .replace(const DashboardRoute());
  //     }
  //   });
  // }

// Future<void> _checkBiometrics() async {
//   late bool canCheckBiometrics;
//   try {
//     canCheckBiometrics = await auth.canCheckBiometrics;
//   } on PlatformException catch (e) {
//     canCheckBiometrics = false;
//     print(e);
//   }
//   if (!mounted) return;
//
//   setState(() {
//     _canCheckBiometrics = canCheckBiometrics;
//   });
// }
}
