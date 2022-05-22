import 'package:auto_route/auto_route.dart';
import 'package:component_sample/routes.gr.dart';
import 'package:flutter/material.dart';

class ChipScreen extends StatelessWidget {
  const ChipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chip Component"),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () => AutoRouter.of(context).push(const InputChipRouter()),
            title: const Text("Input Chip"),
          ),
          ListTile(
            onTap: () => AutoRouter.of(context).push(const ChoiceChipRouter()),
            title: const Text("Choice Chip"),
          ),
          ListTile(
            onTap: () => AutoRouter.of(context).push(const FilterChipRouter()),
            title: const Text("Filter Chip"),
          ),
          ListTile(
            onTap: () => AutoRouter.of(context).push(const ActionChipRouter()),
            title: const Text("Action Chip"),
          ),
        ],
      ),
    );
  }
}
