// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import 'ui/screens/home_screen.dart' as _i3;
import 'ui/screens/root.dart' as _i1;
import 'ui/screens/switch_screen.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    RootScreen.name: (routeData) {
      return _i4.MaterialPageX<_i4.AutoRoute<dynamic>>(
          routeData: routeData, child: const _i1.RootScreen());
    },
    SwitchRouter.name: (routeData) {
      return _i4.MaterialPageX<_i4.AutoRoute<dynamic>>(
          routeData: routeData, child: const _i2.SwitchScreen());
    },
    HomeRouter.name: (routeData) {
      return _i4.MaterialPageX<_i4.AutoRoute<dynamic>>(
          routeData: routeData, child: const _i3.HomeScreen());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig('/#redirect',
            path: '/', redirectTo: 'root', fullMatch: true),
        _i4.RouteConfig(RootScreen.name, path: 'root', children: [
          _i4.RouteConfig(HomeRouter.name,
              path: 'Home', parent: RootScreen.name)
        ]),
        _i4.RouteConfig(SwitchRouter.name, path: 'Switch')
      ];
}

/// generated route for
/// [_i1.RootScreen]
class RootScreen extends _i4.PageRouteInfo<void> {
  const RootScreen({List<_i4.PageRouteInfo>? children})
      : super(RootScreen.name, path: 'root', initialChildren: children);

  static const String name = 'RootScreen';
}

/// generated route for
/// [_i2.SwitchScreen]
class SwitchRouter extends _i4.PageRouteInfo<void> {
  const SwitchRouter() : super(SwitchRouter.name, path: 'Switch');

  static const String name = 'SwitchRouter';
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRouter extends _i4.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: 'Home');

  static const String name = 'HomeRouter';
}
