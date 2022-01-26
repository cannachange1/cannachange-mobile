// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import 'ui/pages/authentication/authorization_page.dart' as _i2;
import 'ui/pages/authentication/client_authorization_page.dart' as _i8;
import 'ui/pages/main_navigation_consumer/consumer/consumer_dashboard_page.dart'
    as _i7;
import 'ui/pages/main_navigation_consumer/consumer/consumer_home_page.dart'
    as _i4;
import 'ui/pages/main_navigation_consumer/consumer/consumer_settings_page.dart'
    as _i6;
import 'ui/pages/main_navigation_consumer/dispenser/dashboard_page.dart' as _i1;
import 'ui/pages/main_navigation_consumer/dispenser/home_page.dart' as _i3;
import 'ui/pages/main_navigation_consumer/dispenser/settings_page.dart' as _i5;
import 'ui/pages/secondary_navigation/welcome_page.dart' as _i9;
import 'ui/pages/verify_account/verify_otp_code_page.dart' as _i10;

class FlutterRouter extends _i11.RootStackRouter {
  FlutterRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DashboardPage());
    },
    AuthorizationRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AuthorizationPage());
    },
    HomeRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    ConsumerHomeRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ConsumerHomePage());
    },
    SettingsRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SettingsPage());
    },
    ConsumerSettingsRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ConsumerSettingsPage());
    },
    ConsumerDashboardRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ConsumerDashboardPage());
    },
    ClientAuthorizationRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ClientAuthorizationPage());
    },
    WelcomeRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.WelcomePage());
    },
    VerifyOtpCodeRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyOtpCodeRouteArgs>(
          orElse: () => const VerifyOtpCodeRouteArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i10.VerifyOtpCodePage(
              key: args.key, isDispensary: args.isDispensary));
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(DashboardRoute.name, path: '/dashboard-page'),
        _i11.RouteConfig(AuthorizationRoute.name, path: '/authorization-page'),
        _i11.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i11.RouteConfig(ConsumerHomeRoute.name, path: '/consumer-home-page'),
        _i11.RouteConfig(SettingsRoute.name, path: '/settings-page'),
        _i11.RouteConfig(ConsumerSettingsRoute.name,
            path: '/consumer-settings-page'),
        _i11.RouteConfig(DashboardRoute.name, path: '/dashboard-page'),
        _i11.RouteConfig(ConsumerDashboardRoute.name,
            path: '/consumer-dashboard-page'),
        _i11.RouteConfig(ClientAuthorizationRoute.name,
            path: '/client-authorization-page'),
        _i11.RouteConfig(WelcomeRoute.name, path: '/'),
        _i11.RouteConfig(VerifyOtpCodeRoute.name, path: '/verify-otp-code-page')
      ];
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i11.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: '/dashboard-page');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i2.AuthorizationPage]
class AuthorizationRoute extends _i11.PageRouteInfo<void> {
  const AuthorizationRoute()
      : super(AuthorizationRoute.name, path: '/authorization-page');

  static const String name = 'AuthorizationRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.ConsumerHomePage]
class ConsumerHomeRoute extends _i11.PageRouteInfo<void> {
  const ConsumerHomeRoute()
      : super(ConsumerHomeRoute.name, path: '/consumer-home-page');

  static const String name = 'ConsumerHomeRoute';
}

/// generated route for
/// [_i5.SettingsPage]
class SettingsRoute extends _i11.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '/settings-page');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i6.ConsumerSettingsPage]
class ConsumerSettingsRoute extends _i11.PageRouteInfo<void> {
  const ConsumerSettingsRoute()
      : super(ConsumerSettingsRoute.name, path: '/consumer-settings-page');

  static const String name = 'ConsumerSettingsRoute';
}

/// generated route for
/// [_i7.ConsumerDashboardPage]
class ConsumerDashboardRoute extends _i11.PageRouteInfo<void> {
  const ConsumerDashboardRoute()
      : super(ConsumerDashboardRoute.name, path: '/consumer-dashboard-page');

  static const String name = 'ConsumerDashboardRoute';
}

/// generated route for
/// [_i8.ClientAuthorizationPage]
class ClientAuthorizationRoute extends _i11.PageRouteInfo<void> {
  const ClientAuthorizationRoute()
      : super(ClientAuthorizationRoute.name,
            path: '/client-authorization-page');

  static const String name = 'ClientAuthorizationRoute';
}

/// generated route for
/// [_i9.WelcomePage]
class WelcomeRoute extends _i11.PageRouteInfo<void> {
  const WelcomeRoute() : super(WelcomeRoute.name, path: '/');

  static const String name = 'WelcomeRoute';
}

/// generated route for
/// [_i10.VerifyOtpCodePage]
class VerifyOtpCodeRoute extends _i11.PageRouteInfo<VerifyOtpCodeRouteArgs> {
  VerifyOtpCodeRoute({_i12.Key? key, bool isDispensary = false})
      : super(VerifyOtpCodeRoute.name,
            path: '/verify-otp-code-page',
            args: VerifyOtpCodeRouteArgs(key: key, isDispensary: isDispensary));

  static const String name = 'VerifyOtpCodeRoute';
}

class VerifyOtpCodeRouteArgs {
  const VerifyOtpCodeRouteArgs({this.key, this.isDispensary = false});

  final _i12.Key? key;

  final bool isDispensary;

  @override
  String toString() {
    return 'VerifyOtpCodeRouteArgs{key: $key, isDispensary: $isDispensary}';
  }
}
