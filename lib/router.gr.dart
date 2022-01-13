// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import 'ui/pages/main_navigation_consumer/dashboard_page.dart' as _i1;
import 'ui/pages/secondary_navigation/welcome_page.dart' as _i2;

class FlutterRouter extends _i3.RootStackRouter {
  FlutterRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DashboardPage());
    },
    WelcomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.WelcomePage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(DashboardRoute.name, path: '/'),
        _i3.RouteConfig(WelcomeRoute.name, path: '/welcome-page')
      ];
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i3.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: '/');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i2.WelcomePage]
class WelcomeRoute extends _i3.PageRouteInfo<void> {
  const WelcomeRoute() : super(WelcomeRoute.name, path: '/welcome-page');

  static const String name = 'WelcomeRoute';
}
