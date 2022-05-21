import 'package:auto_route/auto_route.dart';
import 'package:component_sample/ui/screens/home_screen.dart';
import 'package:component_sample/ui/screens/root.dart';
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
