import 'dart:async';

import 'package:cannachange/store/login/login_state.dart';
import 'package:cannachange/store/registration/registration_state.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../helpers/screen_size_accessor.dart';
import '../../../store/dashboard/dashboard_state.dart';
import '../../../values/values.dart';
import '../../widgets/buttons/main_button.dart';
import '../../widgets/login_section.dart';
import '../../widgets/signup_section.dart';

class AuthorizationPage extends StatefulWidget {
  const AuthorizationPage({Key? key}) : super(key: key);

  @override
  _AuthorizationPageState createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPage> {
  DashboardState dashboardState = GetIt.I<DashboardState>();
  final registrationState = GetIt.I<RegistrationState>();
  LoginState loginState = LoginState();

  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    loginState.setupValidations();
    registrationState.setupValidations();

    _controller.addListener(() => setState(() {}));
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      setState(() {});
    });
  }

  Future<bool> initializeController() {
    Completer<bool> completer = Completer<bool>();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      completer.complete(true);
    });
    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Observer(
          builder: (_) =>
          // registrationState.loadingState.loading ||
          //         loginState.loadingState.loading
          //     ? const Loading(color: Colors.transparent)
          //     :
          SingleChildScrollView(
                  child: SizedBox(
                    height: screenHeight(context),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/illustrations/ill_back.png',
                          fit: BoxFit.fitHeight,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: screenHeight(context) * .07),
                              child: Image.asset(
                                "assets/icons/ic_logo.jpg",
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: PageView(
                                controller: _controller,
                                children: [
                                  LoginSection(
                                    loginState: loginState,
                                  ),
                                  const SignUpSection(),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                FutureBuilder(
                                    future: initializeController(),
                                    builder: (BuildContext context,
                                        AsyncSnapshot<void> snap) {
                                      if (snap.hasData) {
                                        return Observer(
                                          builder: (_) => MainButton(
                                            callback: _controller.hasClients &&
                                                    _controller.page == 0
                                                ? !loginState
                                                            .errors.hasErrors &&
                                                        loginState
                                                            .password!.isNotEmpty
                                                    ? () async {
                                                        authorize();
                                                        loginState
                                                            .resetValues();
                                                      }
                                                    : null
                                                : !registrationState
                                                            .errors.hasSignUpErrors &&
                                                        registrationState
                                                            .password!
                                                            .isNotEmpty &&
                                                        registrationState
                                                            .firstName!.isNotEmpty &&
                                                        registrationState
                                                            .agreedToTermsAndConditions &&
                                                        registrationState
                                                            .agreedToSmsNotification
                                                    ? () {
                                                        authorize();
                                                        registrationState
                                                            .resetValidationErrors();
                                                      }
                                                    : null,
                                            label: _controller.hasClients
                                                ? _controller.page == 0
                                                    ? 'LOGIN'
                                                    : 'SIGN UP'
                                                : '',
                                          ),
                                        );
                                      } else {
                                        return const SizedBox();
                                      }
                                    }),
                                FutureBuilder(
                                  future: initializeController(),
                                  builder: (BuildContext context,
                                      AsyncSnapshot<void> snap) {
                                    if (snap.hasData) {
                                      return Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: GestureDetector(
                                          onTap: () {
                                            if (_controller.page == 0) {}
                                          },
                                          child: RichText(
                                            text: TextSpan(
                                                text: _controller.hasClients
                                                    ? _controller.page == 0
                                                        ? 'Do not have an account?'
                                                        : 'Have an account?'
                                                    : '',
                                                style: TextStyle(
                                                    color: AppColors
                                                        .pastelGreenColor,
                                                    fontSize: 14),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: _controller
                                                              .hasClients
                                                          ? _controller.page ==
                                                                  0
                                                              ? ' ${'SIGN UP'}'
                                                              : ' ${'LOGIN'}'
                                                          : '',
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          //fontWeight: FontWeight.w600,
                                                          color: AppColors
                                                              .pastelGreenColor),
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap =
                                                                animateToCurrentPage),
                                                ]),
                                          ),
                                        ),
                                      );
                                    } else {
                                      return const SizedBox();
                                    }
                                  },
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {});
  }

  @override
  void dispose() {
    loginState.dispose();
    registrationState.dispose();
    _controller.dispose();
    super.dispose();
  }

  Future<void> authorize() async {
    if (_controller.page == 0) {
      await loginState.logIn(context);
      // setState(() {
      //   animateToCurrentPage();
      //   _controller.jumpToPage(1);
      // });
    } else {
      await registrationState.register(context);
    }
  }

  void animateToCurrentPage() {
    _controller.page == 0
        ? _controller.nextPage(
            duration: const Duration(milliseconds: 400), curve: Curves.easeIn)
        : _controller.previousPage(
            duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
  }
}
