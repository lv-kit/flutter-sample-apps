import 'package:auto_route/auto_route.dart';
import 'package:component_sample/ui/screens/chip_screen.dart';
import 'package:component_sample/ui/screens/chips/action_chip_screen.dart';
import 'package:component_sample/ui/screens/chips/choice_chip_screen.dart';
import 'package:component_sample/ui/screens/chips/filter_chip_screen.dart';
import 'package:component_sample/ui/screens/chips/input_chip_screen.dart';
import 'package:component_sample/ui/screens/home_screen.dart';
import 'package:component_sample/ui/screens/root.dart';
import 'package:component_sample/ui/screens/slider_screen.dart';
import 'package:component_sample/ui/screens/switch_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<AutoRoute>(
      path: 'root',
      page: RootScreen,
      initial: true,
      children: [
        AutoRoute<AutoRoute>(
          path: 'Home',
          name: 'HomeRouter',
          page: HomeScreen,
        ),
      ],
    ),
    AutoRoute<AutoRoute>(
      path: 'Switch',
      name: 'SwitchRouter',
      page: SwitchScreen,
    ),
    AutoRoute<AutoRoute>(
      path: 'Slider',
      name: 'SliderRouter',
      page: SliderScreen,
    ),
    AutoRoute<AutoRoute>(
      path: 'Chip',
      name: 'ChipRouter',
      page: ChipScreen,
    ),
    AutoRoute<AutoRoute>(
      path: 'InputChip',
      name: 'InputChipRouter',
      page: InputChipScreen,
    ),
    AutoRoute<AutoRoute>(
      path: 'ChoiceChip',
      name: 'ChoiceChipRouter',
      page: ChoiceChipScreen,
    ),
    AutoRoute<AutoRoute>(
      path: 'FilterChip',
      name: 'FilterChipRouter',
      page: FilterChipScreen,
    ),
    AutoRoute<AutoRoute>(
      path: 'ActionChip',
      name: 'ActionChipRouter',
      page: ActionChipScreen,
    ),
  ],
)
class $AppRouter {}

// const groupTabRouter = AutoRoute(
//   path: 'group/:id',
//   page: GroupScreen,
//   children: [
//     AutoRoute(
//       path: 'home',
//       name: 'GroupTab1Router',
//       page: EmptyRouterPage,
//       children: [
//         AutoRoute(path: '', page: Tab1Screen),
//         RedirectRoute(path: '*', redirectTo: ''),
//       ],
//     ),
//     AutoRoute(
//       path: 'tab2',
//       name: 'GroupTab2Router',
//       page: EmptyRouterPage,
//       children: [
//         AutoRoute(path: '', page: Tab2Screen),
//         RedirectRoute(path: '*', redirectTo: ''),
//       ],
//     ),
//     AutoRoute(
//       path: 'tab3',
//       name: 'GroupTab3Router',
//       page: EmptyRouterPage,
//       children: [
//         AutoRoute(path: '', page: Tab3Screen),
//         RedirectRoute(path: '*', redirectTo: ''),
//       ],
//     ),
//   ],
// );
