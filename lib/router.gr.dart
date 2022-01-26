// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import 'ui/pages/authentication/authorization_page.dart' as _i2;
import 'ui/pages/authentication/client_authorization_page.dart' as _i7;
import 'ui/pages/main_navigation_consumer/client/client_home_page.dart' as _i4;
import 'ui/pages/main_navigation_consumer/client/client_settings_page.dart'
    as _i6;
import 'ui/pages/main_navigation_consumer/dashboard_page.dart' as _i1;
import 'ui/pages/main_navigation_consumer/dispenser/home_page.dart' as _i3;
import 'ui/pages/main_navigation_consumer/dispenser/settings_page.dart' as _i5;
import 'ui/pages/secondary_navigation/welcome_page.dart' as _i8;
import 'ui/pages/verify_account/verify_otp_code_page.dart' as _i9;

class FlutterRouter extends _i10.RootStackRouter {
  FlutterRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DashboardPage());
    },
    AuthorizationRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AuthorizationPage());
    },
    HomeRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    ClientHomeRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ClientHomePage());
    },
    SettingsRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SettingsPage());
    },
    ClientSettingsRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ClientSettingsPage());
    },
    ClientAuthorizationRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ClientAuthorizationPage());
    },
    WelcomeRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.WelcomePage());
    },
    VerifyOtpCodeRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyOtpCodeRouteArgs>(
          orElse: () => const VerifyOtpCodeRouteArgs());
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.VerifyOtpCodePage(
              key: args.key, isDispensary: args.isDispensary));
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(DashboardRoute.name, path: '/dashboard-page'),
        _i10.RouteConfig(AuthorizationRoute.name, path: '/authorization-page'),
        _i10.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i10.RouteConfig(ClientHomeRoute.name, path: '/client-home-page'),
        _i10.RouteConfig(SettingsRoute.name, path: '/settings-page'),
        _i10.RouteConfig(ClientSettingsRoute.name,
            path: '/client-settings-page'),
        _i10.RouteConfig(ClientAuthorizationRoute.name,
            path: '/client-authorization-page'),
        _i10.RouteConfig(WelcomeRoute.name, path: '/'),
        _i10.RouteConfig(VerifyOtpCodeRoute.name, path: '/verify-otp-code-page')
      ];
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i10.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: '/dashboard-page');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i2.AuthorizationPage]
class AuthorizationRoute extends _i10.PageRouteInfo<void> {
  const AuthorizationRoute()
      : super(AuthorizationRoute.name, path: '/authorization-page');

  static const String name = 'AuthorizationRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.ClientHomePage]
class ClientHomeRoute extends _i10.PageRouteInfo<void> {
  const ClientHomeRoute()
      : super(ClientHomeRoute.name, path: '/client-home-page');

  static const String name = 'ClientHomeRoute';
}

/// generated route for
/// [_i5.SettingsPage]
class SettingsRoute extends _i10.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '/settings-page');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i6.ClientSettingsPage]
class ClientSettingsRoute extends _i10.PageRouteInfo<void> {
  const ClientSettingsRoute()
      : super(ClientSettingsRoute.name, path: '/client-settings-page');

  static const String name = 'ClientSettingsRoute';
}

/// generated route for
/// [_i7.ClientAuthorizationPage]
class ClientAuthorizationRoute extends _i10.PageRouteInfo<void> {
  const ClientAuthorizationRoute()
      : super(ClientAuthorizationRoute.name,
            path: '/client-authorization-page');

  static const String name = 'ClientAuthorizationRoute';
}

/// generated route for
/// [_i8.WelcomePage]
class WelcomeRoute extends _i10.PageRouteInfo<void> {
  const WelcomeRoute() : super(WelcomeRoute.name, path: '/');

  static const String name = 'WelcomeRoute';
}

/// generated route for
/// [_i9.VerifyOtpCodePage]
class VerifyOtpCodeRoute extends _i10.PageRouteInfo<VerifyOtpCodeRouteArgs> {
  VerifyOtpCodeRoute({_i11.Key? key, bool isDispensary = false})
      : super(VerifyOtpCodeRoute.name,
            path: '/verify-otp-code-page',
            args: VerifyOtpCodeRouteArgs(key: key, isDispensary: isDispensary));

  static const String name = 'VerifyOtpCodeRoute';
}

class VerifyOtpCodeRouteArgs {
  const VerifyOtpCodeRouteArgs({this.key, this.isDispensary = false});

  final _i11.Key? key;

  final bool isDispensary;

  @override
  String toString() {
    return 'VerifyOtpCodeRouteArgs{key: $key, isDispensary: $isDispensary}';
  }
}
