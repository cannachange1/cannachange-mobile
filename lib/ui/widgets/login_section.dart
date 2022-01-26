import 'package:cannachange/store/login/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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


  @override
  void initState() {
    super.initState();
    widget.loginState.setupValidations();
    widget.loginState.errors.resetValidationErrors();
  }

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
          height: 20,
        ),
        Column(
          children: [
            const Center(
              child: Text(
                StringConst.welcomeText,
                style: Styles.mainTextStyle,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Observer(
              builder: (_) => TextInput(
                onChanged: (value) => widget.loginState.setEmail(value),
                textInputAction: TextInputAction.next,
                hintText: StringConst.email,
                errorText: widget.loginState.errors.email,
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
              child: const Text(
                StringConst.forgotPassword,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: AppColors.secondAccent,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
