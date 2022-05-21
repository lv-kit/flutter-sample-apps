import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});
  @override
  State<SliderScreen> createState() => _SliderScreen();
}

class _SliderScreen extends State<SliderScreen> {
  double _createSampleValue1 = 18;
  double _createSampleValue2 = 20;
  RangeValues _createSampleValue3 = const RangeValues(10, 40);
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider Sample"),
      ),
      body: Column(
        children: [
          createSample1(context),
          Text('Value1 : $_createSampleValue1'),
          const Spacer(
            flex: 1,
          ),
          createSample2(context),
          Text('Value2 : $_createSampleValue2'),
          const Spacer(
            flex: 1,
          ),
          createSample3(context),
          Text('Value3 : $_createSampleValue3'),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }

  Slider createSample1(BuildContext context) {
    return Slider(
      value: _createSampleValue1,
      min: 18,
      max: 60,
      onChanged: (value) {
        setState(() {
          _createSampleValue1 = value.round().toDouble();
        });
      },
    );
  }

  Slider createSample2(BuildContext context) {
    return Slider(
      value: _createSampleValue2,
      min: 18,
      max: 60,
      // 選択している時の値の表示ラベル
      label: _createSampleValue2.round().toString(),
      // 値のステップ数
      divisions: 5,
      inactiveColor: Colors.black12,
      activeColor: Colors.red,
      onChanged: (value) {
        setState(() {
          _createSampleValue2 = value.round().toDouble();
        });
      },
    );
  }

  RangeSlider createSample3(BuildContext context) {
    return RangeSlider(
      values: _createSampleValue3,
      min: 0,
      max: 100,
      onChanged: (value) {
        setState(() {
          _createSampleValue3 = RangeValues(
              value.start.round().toDouble(), value.end.round().toDouble());
        });
      },
    );
  }
}
