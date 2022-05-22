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

import 'ui/screens/chip_screen.dart' as _i4;
import 'ui/screens/chips/action_chip_screen.dart' as _i8;
import 'ui/screens/chips/choice_chip_screen.dart' as _i6;
import 'ui/screens/chips/filter_chip_screen.dart' as _i7;
import 'ui/screens/chips/input_chip_screen.dart' as _i5;
import 'ui/screens/home_screen.dart' as _i9;
import 'ui/screens/root.dart' as _i1;
import 'ui/screens/slider_screen.dart' as _i3;
import 'ui/screens/switch_screen.dart' as _i2;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    RootScreen.name: (routeData) {
      return _i10.MaterialPageX<_i10.AutoRoute<dynamic>>(
          routeData: routeData, child: const _i1.RootScreen());
    },
    SwitchRouter.name: (routeData) {
      return _i10.MaterialPageX<_i10.AutoRoute<dynamic>>(
          routeData: routeData, child: const _i2.SwitchScreen());
    },
    SliderRouter.name: (routeData) {
      return _i10.MaterialPageX<_i10.AutoRoute<dynamic>>(
          routeData: routeData, child: const _i3.SliderScreen());
    },
    ChipRouter.name: (routeData) {
      return _i10.MaterialPageX<_i10.AutoRoute<dynamic>>(
          routeData: routeData, child: const _i4.ChipScreen());
    },
    InputChipRouter.name: (routeData) {
      return _i10.MaterialPageX<_i10.AutoRoute<dynamic>>(
          routeData: routeData, child: const _i5.InputChipScreen());
    },
    ChoiceChipRouter.name: (routeData) {
      return _i10.MaterialPageX<_i10.AutoRoute<dynamic>>(
          routeData: routeData, child: const _i6.ChoiceChipScreen());
    },
    FilterChipRouter.name: (routeData) {
      return _i10.MaterialPageX<_i10.AutoRoute<dynamic>>(
          routeData: routeData, child: const _i7.FilterChipScreen());
    },
    ActionChipRouter.name: (routeData) {
      return _i10.MaterialPageX<_i10.AutoRoute<dynamic>>(
          routeData: routeData, child: const _i8.ActionChipScreen());
    },
    HomeRouter.name: (routeData) {
      return _i10.MaterialPageX<_i10.AutoRoute<dynamic>>(
          routeData: routeData, child: const _i9.HomeScreen());
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig('/#redirect',
            path: '/', redirectTo: 'root', fullMatch: true),
        _i10.RouteConfig(RootScreen.name, path: 'root', children: [
          _i10.RouteConfig(HomeRouter.name,
              path: 'Home', parent: RootScreen.name)
        ]),
        _i10.RouteConfig(SwitchRouter.name, path: 'Switch'),
        _i10.RouteConfig(SliderRouter.name, path: 'Slider'),
        _i10.RouteConfig(ChipRouter.name, path: 'Chip'),
        _i10.RouteConfig(InputChipRouter.name, path: 'InputChip'),
        _i10.RouteConfig(ChoiceChipRouter.name, path: 'ChoiceChip'),
        _i10.RouteConfig(FilterChipRouter.name, path: 'FilterChip'),
        _i10.RouteConfig(ActionChipRouter.name, path: 'ActionChip')
      ];
}

/// generated route for
/// [_i1.RootScreen]
class RootScreen extends _i10.PageRouteInfo<void> {
  const RootScreen({List<_i10.PageRouteInfo>? children})
      : super(RootScreen.name, path: 'root', initialChildren: children);

  static const String name = 'RootScreen';
}

/// generated route for
/// [_i2.SwitchScreen]
class SwitchRouter extends _i10.PageRouteInfo<void> {
  const SwitchRouter() : super(SwitchRouter.name, path: 'Switch');

  static const String name = 'SwitchRouter';
}

/// generated route for
/// [_i3.SliderScreen]
class SliderRouter extends _i10.PageRouteInfo<void> {
  const SliderRouter() : super(SliderRouter.name, path: 'Slider');

  static const String name = 'SliderRouter';
}

/// generated route for
/// [_i4.ChipScreen]
class ChipRouter extends _i10.PageRouteInfo<void> {
  const ChipRouter() : super(ChipRouter.name, path: 'Chip');

  static const String name = 'ChipRouter';
}

/// generated route for
/// [_i5.InputChipScreen]
class InputChipRouter extends _i10.PageRouteInfo<void> {
  const InputChipRouter() : super(InputChipRouter.name, path: 'InputChip');

  static const String name = 'InputChipRouter';
}

/// generated route for
/// [_i6.ChoiceChipScreen]
class ChoiceChipRouter extends _i10.PageRouteInfo<void> {
  const ChoiceChipRouter() : super(ChoiceChipRouter.name, path: 'ChoiceChip');

  static const String name = 'ChoiceChipRouter';
}

/// generated route for
/// [_i7.FilterChipScreen]
class FilterChipRouter extends _i10.PageRouteInfo<void> {
  const FilterChipRouter() : super(FilterChipRouter.name, path: 'FilterChip');

  static const String name = 'FilterChipRouter';
}

/// generated route for
/// [_i8.ActionChipScreen]
class ActionChipRouter extends _i10.PageRouteInfo<void> {
  const ActionChipRouter() : super(ActionChipRouter.name, path: 'ActionChip');

  static const String name = 'ActionChipRouter';
}

/// generated route for
/// [_i9.HomeScreen]
class HomeRouter extends _i10.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: 'Home');

  static const String name = 'HomeRouter';
}
