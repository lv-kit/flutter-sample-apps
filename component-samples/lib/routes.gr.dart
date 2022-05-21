// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import 'ui/screens/home_screen.dart' as _i4;
import 'ui/screens/root.dart' as _i1;
import 'ui/screens/slider_screen.dart' as _i3;
import 'ui/screens/switch_screen.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    RootScreen.name: (routeData) {
      return _i5.MaterialPageX<_i5.AutoRoute<dynamic>>(
          routeData: routeData, child: const _i1.RootScreen());
    },
    SwitchRouter.name: (routeData) {
      return _i5.MaterialPageX<_i5.AutoRoute<dynamic>>(
          routeData: routeData, child: const _i2.SwitchScreen());
    },
    SliderRouter.name: (routeData) {
      return _i5.MaterialPageX<_i5.AutoRoute<dynamic>>(
          routeData: routeData, child: const _i3.SliderScreen());
    },
    HomeRouter.name: (routeData) {
      return _i5.MaterialPageX<_i5.AutoRoute<dynamic>>(
          routeData: routeData, child: const _i4.HomeScreen());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig('/#redirect',
            path: '/', redirectTo: 'root', fullMatch: true),
        _i5.RouteConfig(RootScreen.name, path: 'root', children: [
          _i5.RouteConfig(HomeRouter.name,
              path: 'Home', parent: RootScreen.name)
        ]),
        _i5.RouteConfig(SwitchRouter.name, path: 'Switch'),
        _i5.RouteConfig(SliderRouter.name, path: 'Slider')
      ];
}

/// generated route for
/// [_i1.RootScreen]
class RootScreen extends _i5.PageRouteInfo<void> {
  const RootScreen({List<_i5.PageRouteInfo>? children})
      : super(RootScreen.name, path: 'root', initialChildren: children);

  static const String name = 'RootScreen';
}

/// generated route for
/// [_i2.SwitchScreen]
class SwitchRouter extends _i5.PageRouteInfo<void> {
  const SwitchRouter() : super(SwitchRouter.name, path: 'Switch');

  static const String name = 'SwitchRouter';
}

/// generated route for
/// [_i3.SliderScreen]
class SliderRouter extends _i5.PageRouteInfo<void> {
  const SliderRouter() : super(SliderRouter.name, path: 'Slider');

  static const String name = 'SliderRouter';
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRouter extends _i5.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: 'Home');

  static const String name = 'HomeRouter';
}
