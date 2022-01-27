import 'dart:async';

import 'package:cannachange/store/login/login_state.dart';
import 'package:cannachange/store/registration/registration_state.dart';
import 'package:cannachange/store/store_state/store_state.dart';
import 'package:cannachange/ui/widgets/client_signup_section.dart';
import 'package:cannachange/ui/widgets/custom_app_bar.dart';
import 'package:cannachange/ui/widgets/loading.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../helpers/screen_size_accessor.dart';
import '../../../store/dashboard/dashboard_state.dart';
import '../../../values/values.dart';
import '../../widgets/buttons/main_button.dart';
import '../../widgets/login_section.dart';

class ClientAuthorizationPage extends StatefulWidget {
  const ClientAuthorizationPage({Key? key}) : super(key: key);

  @override
  _ClientAuthorizationPageState createState() =>
      _ClientAuthorizationPageState();
}

class _ClientAuthorizationPageState extends State<ClientAuthorizationPage> {
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
    registrationState.setupConsumerValidations();
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
        appBar: CustomAppBar(),
        resizeToAvoidBottomInset: true,
        body: Observer(
          builder: (_) => registrationState.storeState.state ==
                      StoreStates.loading
              ? const Loading(color: Colors.transparent)
              : SingleChildScrollView(
                  child: SizedBox(
                    height: screenHeight(context) * .9,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Expanded(
                          child: PageView(
                            controller: _controller,
                            children: [
                              LoginSection(
                                loginState: loginState,
                              ),
                              const ClientSignUpSection(),
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
                                      builder: (_) => Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: MainButton(
                                            callback: _controller.hasClients &&
                                                    _controller.page == 0
                                                ? !loginState
                                                            .errors.hasErrors &&
                                                        loginState.password!
                                                            .isNotEmpty
                                                    ? () async {
                                                        authorize();
                                                        loginState
                                                            .resetValues();
                                                      }
                                                    : null
                                                : !registrationState.errors
                                                            .hasConsumerSignUpErrors &
                                                        registrationState
                                                            .agreedToConsumerTermsAndConditions
                                                    ? () {
                                                        authorize();
                                                      }
                                                    : null,
                                            label: _controller.hasClients
                                                ? _controller.page == 0
                                                    ? 'LOGIN'
                                                    : 'SIGN UP'
                                                : '',
                                          ),
                                        ),
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
                                                    ? "Don't have an account yet?"
                                                    : 'Have an account?'
                                                : '',
                                            style: const TextStyle(
                                                color: AppColors.secondAccent,
                                                fontSize: 14),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: _controller.hasClients
                                                      ? _controller.page == 0
                                                          ? ' ${'SIGN UP'}'
                                                          : ' ${'LOGIN'}'
                                                      : '',
                                                  style: const TextStyle(
                                                      fontWeight: FontWeight
                                                          .w900,
                                                      color: AppColors
                                                          .secondAccent),
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
    // registrationState.dispose();
    _controller.dispose();
    super.dispose();
  }

  Future<void> authorize() async {
    if (_controller.page == 0) {
      await loginState.logInConsumer(context);
      // setState(() {
      //   animateToCurrentPage();
      //   _controller.jumpToPage(1);
      // });
    } else {
      await registrationState.registerConsumer(context);
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
