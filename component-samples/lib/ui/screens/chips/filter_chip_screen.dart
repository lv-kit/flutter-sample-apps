import 'package:flutter/material.dart';

class ChipData {
  final int id;
  final String name;
  ChipData({required this.id, required this.name});
}

class FilterChipScreen extends StatefulWidget {
  const FilterChipScreen({Key? key}) : super(key: key);

  @override
  State<FilterChipScreen> createState() => _FilterChipScreenState();
}

class _FilterChipScreenState extends State<FilterChipScreen> {
  final List<ChipData> _values = <ChipData>[
    ChipData(id: 1, name: "Java"),
    ChipData(id: 2, name: "Kotlin"),
    ChipData(id: 3, name: "Objective-C"),
    ChipData(id: 4, name: "Swift"),
  ];

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
      children:
          _values.map((chip) => createSelectedTagChip(context, chip)).toList(),
    );
  }

  Wrap createUnSelectedTag(BuildContext context) {
    return Wrap(
      children: _values
          .map((chip) => createNotSelectedTagChip(context, chip))
          .toList(),
    );
  }

  InputChip createSelectedTagChip(BuildContext context, ChipData chip) {
    return InputChip(
      label: Text(chip.name),
      key: ValueKey(chip.id),
      deleteIcon: const Icon(Icons.close),
      onDeleted: () => setState(
          () => _values.removeWhere((element) => element.id == chip.id)),
    );
  }

  InputChip createNotSelectedTagChip(BuildContext context, ChipData chip) {
    return InputChip(
      label: Text(chip.name),
      onSelected: (bool selected) {
        setState(() {
          bool isInclude =
              _values.contains(ChipData(id: chip.id, name: chip.name));
          print(isInclude);
          isInclude
              ? null
              : _values.add(ChipData(id: chip.id, name: chip.name));
        });
      },
    );
  }
}
