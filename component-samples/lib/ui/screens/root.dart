import 'package:auto_route/auto_route.dart';
import 'package:component_sample/routes.gr.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Component List"),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () => AutoRouter.of(context).push(const SwitchRouter()),
            title: const Text("Switch View"),
          ),
          ListTile(
            onTap: () => AutoRouter.of(context).push(const SliderRouter()),
            title: const Text("Slider View"),
          ),
          ListTile(
            onTap: () => AutoRouter.of(context).push(const ChipRouter()),
            title: const Text("Chip View"),
          ),
        ],
      ),
    );
  }
}
