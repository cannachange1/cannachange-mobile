import 'package:auto_route/auto_route.dart';
import 'ui/pages/main_navigation/dashboard_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: DashboardPage, initial: true),
  //  AutoRoute(page: ForgetPasswordPage),
  ],
)
class $FlutterRouter {}
