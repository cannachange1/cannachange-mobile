import 'package:auto_route/auto_route.dart';
import 'package:cannachange/ui/pages/authentication/authorization_page.dart';
import 'package:cannachange/ui/pages/authentication/client_authorization_page.dart';
import 'package:cannachange/ui/pages/main_navigation_consumer/consumer/consumer_account_management_page.dart';
import 'package:cannachange/ui/pages/main_navigation_consumer/consumer/consumer_dashboard_page.dart';
import 'package:cannachange/ui/pages/main_navigation_consumer/consumer/consumer_home_page.dart';
import 'package:cannachange/ui/pages/main_navigation_consumer/consumer/consumer_personal_details_page.dart';
import 'package:cannachange/ui/pages/main_navigation_consumer/dispenser/account_details_page.dart';
import 'package:cannachange/ui/pages/main_navigation_consumer/dispenser/account_management_page.dart';
import 'package:cannachange/ui/pages/main_navigation_consumer/dispenser/aeropay_page.dart';
import 'package:cannachange/ui/pages/main_navigation_consumer/dispenser/home_page.dart';
import 'package:cannachange/ui/pages/main_navigation_consumer/dispenser/payment_page.dart';
import 'package:cannachange/ui/pages/main_navigation_consumer/dispenser/settings_page.dart';
import 'package:cannachange/ui/pages/secondary_navigation/map_page.dart';
import 'ui/pages/main_navigation_consumer/consumer/consumer_settings_page.dart';
import 'ui/pages/main_navigation_consumer/dispenser/dashboard_page.dart';
import 'ui/pages/secondary_navigation/qr_scanner_view.dart';
import 'ui/pages/secondary_navigation/welcome_page.dart';
import 'ui/pages/verify_account/verify_otp_code_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: DashboardPage),
    AutoRoute(page: AuthorizationPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: ConsumerHomePage),
    AutoRoute(page: SettingsPage),
    AutoRoute(page: ConsumerSettingsPage),
    AutoRoute(page: AccountManagementPage),
    AutoRoute(page: PaymentPage),
    AutoRoute(page: DashboardPage),
    AutoRoute(page: ConsumerDashboardPage),
    AutoRoute(page: AccountDetailsPage),
    AutoRoute(page: ClientAuthorizationPage),
    AutoRoute(page: WelcomePage, initial: true),
    AutoRoute(page: VerifyOtpCodePage),
    AutoRoute(page: QrScannerView),
    AutoRoute(page: MapPage),
    AutoRoute(page: AeropayPage),
    AutoRoute(page: ConsumerAccountManagementPage),
    AutoRoute(page: ConsumerPersonalDetailsPage),
  ],
)
class $FlutterRouter {}
