// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import 'ui/pages/authentication/authorization_page.dart' as _i2;
import 'ui/pages/authentication/client_authorization_page.dart' as _i3;
import 'ui/pages/main_navigation_consumer/dashboard_page.dart' as _i1;
import 'ui/pages/secondary_navigation/welcome_page.dart' as _i4;
import 'ui/pages/verify_account/verify_otp_code_page.dart' as _i5;

class FlutterRouter extends _i6.RootStackRouter {
  FlutterRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DashboardPage());
    },
    AuthorizationRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AuthorizationPage());
    },
    ClientAuthorizationRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ClientAuthorizationPage());
    },
    WelcomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.WelcomePage());
    },
    VerifyOtpCodeRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyOtpCodeRouteArgs>(
          orElse: () => const VerifyOtpCodeRouteArgs());
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.VerifyOtpCodePage(
              key: args.key, isDispensary: args.isDispensary));
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(DashboardRoute.name, path: '/dashboard-page'),
        _i6.RouteConfig(AuthorizationRoute.name, path: '/authorization-page'),
        _i6.RouteConfig(ClientAuthorizationRoute.name,
            path: '/client-authorization-page'),
        _i6.RouteConfig(WelcomeRoute.name, path: '/'),
        _i6.RouteConfig(VerifyOtpCodeRoute.name, path: '/verify-otp-code-page')
      ];
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i6.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: '/dashboard-page');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i2.AuthorizationPage]
class AuthorizationRoute extends _i6.PageRouteInfo<void> {
  const AuthorizationRoute()
      : super(AuthorizationRoute.name, path: '/authorization-page');

  static const String name = 'AuthorizationRoute';
}

/// generated route for
/// [_i3.ClientAuthorizationPage]
class ClientAuthorizationRoute extends _i6.PageRouteInfo<void> {
  const ClientAuthorizationRoute()
      : super(ClientAuthorizationRoute.name,
            path: '/client-authorization-page');

  static const String name = 'ClientAuthorizationRoute';
}

/// generated route for
/// [_i4.WelcomePage]
class WelcomeRoute extends _i6.PageRouteInfo<void> {
  const WelcomeRoute() : super(WelcomeRoute.name, path: '/');

  static const String name = 'WelcomeRoute';
}

/// generated route for
/// [_i5.VerifyOtpCodePage]
class VerifyOtpCodeRoute extends _i6.PageRouteInfo<VerifyOtpCodeRouteArgs> {
  VerifyOtpCodeRoute({_i7.Key? key, bool isDispensary = false})
      : super(VerifyOtpCodeRoute.name,
            path: '/verify-otp-code-page',
            args: VerifyOtpCodeRouteArgs(key: key, isDispensary: isDispensary));

  static const String name = 'VerifyOtpCodeRoute';
}

class VerifyOtpCodeRouteArgs {
  const VerifyOtpCodeRouteArgs({this.key, this.isDispensary = false});

  final _i7.Key? key;

  final bool isDispensary;

  @override
  String toString() {
    return 'VerifyOtpCodeRouteArgs{key: $key, isDispensary: $isDispensary}';
  }
}
