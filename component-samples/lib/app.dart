import 'package:component_sample/routes.gr.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp.router(
      routerDelegate: appRouter.delegate(),
      routeInformationProvider: appRouter.routeInfoProvider(),
      routeInformationParser: appRouter.defaultRouteParser(),
      // debugShowMaterialGrid: true,
    );
  }
}
