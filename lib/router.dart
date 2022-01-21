import 'package:auto_route/auto_route.dart';
import 'package:cannachange/ui/pages/authentication/authorization_page.dart';
import 'package:cannachange/ui/pages/authentication/client_authorization_page.dart';
import 'ui/pages/main_navigation_consumer/dashboard_page.dart';
import 'ui/pages/secondary_navigation/welcome_page.dart';
import 'ui/pages/verify_account/verify_otp_code_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: DashboardPage),
    AutoRoute(page: AuthorizationPage),
    AutoRoute(page: ClientAuthorizationPage),
    AutoRoute(page: WelcomePage, initial: true),
    AutoRoute(page: VerifyOtpCodePage),
  ],
)
class $FlutterRouter {}
