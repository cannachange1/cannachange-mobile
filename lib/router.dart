import 'package:auto_route/auto_route.dart';
import 'ui/pages/main_navigation_consumer/dashboard_page.dart';
import 'ui/pages/secondary_navigation/welcome_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: DashboardPage, initial: true),
    AutoRoute(
      page: WelcomePage,
    ),
    //  AutoRoute(page: ForgetPasswordPage),
  ],
)
class $FlutterRouter {}
