import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreen();
}

class _SwitchScreen extends State<SwitchScreen> {
  bool _createSampleValue1 = false;
  final bool _createSampleValue2 = true;

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("value1"),
            trailing: Switch(
              value: _createSampleValue1,
              onChanged: (value) => setState(() => _createSampleValue1 = value),
            ),
          ),
          ListTile(
            title: const Text("value2"),
            trailing: Switch(
              value: _createSampleValue2,
              onChanged: null,
            ),
          ),
        ],
      ),
    );
  }
}
