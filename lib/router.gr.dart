// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/material.dart' as _i18;

import 'ui/pages/authentication/authorization_page.dart' as _i2;
import 'ui/pages/authentication/client_authorization_page.dart' as _i11;
import 'ui/pages/main_navigation_consumer/consumer/consumer_account_management_page.dart'
    as _i15;
import 'ui/pages/main_navigation_consumer/consumer/consumer_dashboard_page.dart'
    as _i9;
import 'ui/pages/main_navigation_consumer/consumer/consumer_home_page.dart'
    as _i4;
import 'ui/pages/main_navigation_consumer/consumer/consumer_personal_details_page.dart'
    as _i16;
import 'ui/pages/main_navigation_consumer/consumer/consumer_settings_page.dart'
    as _i6;
import 'ui/pages/main_navigation_consumer/dispenser/account_details_page.dart'
    as _i10;
import 'ui/pages/main_navigation_consumer/dispenser/account_management_page.dart'
    as _i7;
import 'ui/pages/main_navigation_consumer/dispenser/dashboard_page.dart' as _i1;
import 'ui/pages/main_navigation_consumer/dispenser/home_page.dart' as _i3;
import 'ui/pages/main_navigation_consumer/dispenser/payment_page.dart' as _i8;
import 'ui/pages/main_navigation_consumer/dispenser/settings_page.dart' as _i5;
import 'ui/pages/secondary_navigation/qr_scanner_view.dart' as _i14;
import 'ui/pages/secondary_navigation/welcome_page.dart' as _i12;
import 'ui/pages/verify_account/verify_otp_code_page.dart' as _i13;

class FlutterRouter extends _i17.RootStackRouter {
  FlutterRouter([_i18.GlobalKey<_i18.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DashboardPage());
    },
    AuthorizationRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AuthorizationPage());
    },
    HomeRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    ConsumerHomeRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ConsumerHomePage());
    },
    SettingsRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SettingsPage());
    },
    ConsumerSettingsRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ConsumerSettingsPage());
    },
    AccountManagementRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.AccountManagementPage());
    },
    PaymentRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.PaymentPage());
    },
    ConsumerDashboardRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ConsumerDashboardPage());
    },
    AccountDetailsRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.AccountDetailsPage());
    },
    ClientAuthorizationRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.ClientAuthorizationPage());
    },
    WelcomeRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.WelcomePage());
    },
    VerifyOtpCodeRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyOtpCodeRouteArgs>(
          orElse: () => const VerifyOtpCodeRouteArgs());
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i13.VerifyOtpCodePage(
              key: args.key, isDispensary: args.isDispensary));
    },
    QrScannerView.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.QrScannerView());
    },
    ConsumerAccountManagementRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i15.ConsumerAccountManagementPage());
    },
    ConsumerPersonalDetailsRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i16.ConsumerPersonalDetailsPage());
    }
  };

  @override
  List<_i17.RouteConfig> get routes => [
        _i17.RouteConfig(DashboardRoute.name, path: '/dashboard-page'),
        _i17.RouteConfig(AuthorizationRoute.name, path: '/authorization-page'),
        _i17.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i17.RouteConfig(ConsumerHomeRoute.name, path: '/consumer-home-page'),
        _i17.RouteConfig(SettingsRoute.name, path: '/settings-page'),
        _i17.RouteConfig(ConsumerSettingsRoute.name,
            path: '/consumer-settings-page'),
        _i17.RouteConfig(AccountManagementRoute.name,
            path: '/account-management-page'),
        _i17.RouteConfig(PaymentRoute.name, path: '/payment-page'),
        _i17.RouteConfig(DashboardRoute.name, path: '/dashboard-page'),
        _i17.RouteConfig(ConsumerDashboardRoute.name,
            path: '/consumer-dashboard-page'),
        _i17.RouteConfig(AccountDetailsRoute.name,
            path: '/account-details-page'),
        _i17.RouteConfig(ClientAuthorizationRoute.name,
            path: '/client-authorization-page'),
        _i17.RouteConfig(WelcomeRoute.name, path: '/'),
        _i17.RouteConfig(VerifyOtpCodeRoute.name,
            path: '/verify-otp-code-page'),
        _i17.RouteConfig(QrScannerView.name, path: '/qr-scanner-view'),
        _i17.RouteConfig(ConsumerAccountManagementRoute.name,
            path: '/consumer-account-management-page'),
        _i17.RouteConfig(ConsumerPersonalDetailsRoute.name,
            path: '/consumer-personal-details-page')
      ];
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i17.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: '/dashboard-page');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i2.AuthorizationPage]
class AuthorizationRoute extends _i17.PageRouteInfo<void> {
  const AuthorizationRoute()
      : super(AuthorizationRoute.name, path: '/authorization-page');

  static const String name = 'AuthorizationRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i17.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.ConsumerHomePage]
class ConsumerHomeRoute extends _i17.PageRouteInfo<void> {
  const ConsumerHomeRoute()
      : super(ConsumerHomeRoute.name, path: '/consumer-home-page');

  static const String name = 'ConsumerHomeRoute';
}

/// generated route for
/// [_i5.SettingsPage]
class SettingsRoute extends _i17.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '/settings-page');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i6.ConsumerSettingsPage]
class ConsumerSettingsRoute extends _i17.PageRouteInfo<void> {
  const ConsumerSettingsRoute()
      : super(ConsumerSettingsRoute.name, path: '/consumer-settings-page');

  static const String name = 'ConsumerSettingsRoute';
}

/// generated route for
/// [_i7.AccountManagementPage]
class AccountManagementRoute extends _i17.PageRouteInfo<void> {
  const AccountManagementRoute()
      : super(AccountManagementRoute.name, path: '/account-management-page');

  static const String name = 'AccountManagementRoute';
}

/// generated route for
/// [_i8.PaymentPage]
class PaymentRoute extends _i17.PageRouteInfo<void> {
  const PaymentRoute() : super(PaymentRoute.name, path: '/payment-page');

  static const String name = 'PaymentRoute';
}

/// generated route for
/// [_i9.ConsumerDashboardPage]
class ConsumerDashboardRoute extends _i17.PageRouteInfo<void> {
  const ConsumerDashboardRoute()
      : super(ConsumerDashboardRoute.name, path: '/consumer-dashboard-page');

  static const String name = 'ConsumerDashboardRoute';
}

/// generated route for
/// [_i10.AccountDetailsPage]
class AccountDetailsRoute extends _i17.PageRouteInfo<void> {
  const AccountDetailsRoute()
      : super(AccountDetailsRoute.name, path: '/account-details-page');

  static const String name = 'AccountDetailsRoute';
}

/// generated route for
/// [_i11.ClientAuthorizationPage]
class ClientAuthorizationRoute extends _i17.PageRouteInfo<void> {
  const ClientAuthorizationRoute()
      : super(ClientAuthorizationRoute.name,
            path: '/client-authorization-page');

  static const String name = 'ClientAuthorizationRoute';
}

/// generated route for
/// [_i12.WelcomePage]
class WelcomeRoute extends _i17.PageRouteInfo<void> {
  const WelcomeRoute() : super(WelcomeRoute.name, path: '/');

  static const String name = 'WelcomeRoute';
}

/// generated route for
/// [_i13.VerifyOtpCodePage]
class VerifyOtpCodeRoute extends _i17.PageRouteInfo<VerifyOtpCodeRouteArgs> {
  VerifyOtpCodeRoute({_i18.Key? key, bool isDispensary = false})
      : super(VerifyOtpCodeRoute.name,
            path: '/verify-otp-code-page',
            args: VerifyOtpCodeRouteArgs(key: key, isDispensary: isDispensary));

  static const String name = 'VerifyOtpCodeRoute';
}

class VerifyOtpCodeRouteArgs {
  const VerifyOtpCodeRouteArgs({this.key, this.isDispensary = false});

  final _i18.Key? key;

  final bool isDispensary;

  @override
  String toString() {
    return 'VerifyOtpCodeRouteArgs{key: $key, isDispensary: $isDispensary}';
  }
}

/// generated route for
/// [_i14.QrScannerView]
class QrScannerView extends _i17.PageRouteInfo<void> {
  const QrScannerView() : super(QrScannerView.name, path: '/qr-scanner-view');

  static const String name = 'QrScannerView';
}

/// generated route for
/// [_i15.ConsumerAccountManagementPage]
class ConsumerAccountManagementRoute extends _i17.PageRouteInfo<void> {
  const ConsumerAccountManagementRoute()
      : super(ConsumerAccountManagementRoute.name,
            path: '/consumer-account-management-page');

  static const String name = 'ConsumerAccountManagementRoute';
}

/// generated route for
/// [_i16.ConsumerPersonalDetailsPage]
class ConsumerPersonalDetailsRoute extends _i17.PageRouteInfo<void> {
  const ConsumerPersonalDetailsRoute()
      : super(ConsumerPersonalDetailsRoute.name,
            path: '/consumer-personal-details-page');

  static const String name = 'ConsumerPersonalDetailsRoute';
}
