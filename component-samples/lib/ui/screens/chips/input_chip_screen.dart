import 'package:flutter/material.dart';

class InputChipScreen extends StatefulWidget {
  const InputChipScreen({Key? key}) : super(key: key);

  @override
  State<InputChipScreen> createState() => _InputChipScreenState();
}

class _InputChipScreenState extends State<InputChipScreen> {
  Map values = <int, String>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chip Sample"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("選択済み"),
          createSelectedTag(context),
          const Divider(),
          const Text("未選択"),
          createUnSelectedTag(context),
        ],
      ),
    );
  }

  Wrap createSelectedTag(BuildContext context) {
    return Wrap(
      children: [],
    );
  }

  Wrap createUnSelectedTag(BuildContext context) {
    return Wrap(
      children: [],
    );
  }

  InputChip createSelectedTagChip(
      BuildContext context, String label, int index) {
    return InputChip(
      label: Text(label),
      deleteIcon: const Icon(Icons.close),
      onDeleted: () {
        setState(() {
          values.remove(index);
        });
      },
    );
  }

  InputChip createNotSelectedTagChip(
      BuildContext context, String label, int index) {
    return InputChip(
      label: Text(label),
      onSelected: (value) {
        setState(() {
          var data = <int, String>{index: label};
          values.addEntries(data.entries);
        });
      },
    );
  }
}
