import 'package:flutter/material.dart';
import 'package:widget_gallery/themes/app_themes.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders and checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
              value: _sliderValue,
              onChanged: _check
                  ? (value) {
                      print(value);
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null,
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              divisions: 20,
            ),
            Checkbox(
                value: _check,
                onChanged: (v) {
                  _check = v ?? false;
                  // _sliderValue = (v == true) ? 220 : _sliderValue;
                  setState(() {});
                }),
            CheckboxListTile(
                activeColor: AppTheme.primary,
                title: const Text('Pene'),
                value: _check,
                onChanged: (v) => setState(() {
                      _check = v ?? false;
                    })),
            Switch(
                value: _check,
                onChanged: (v) => setState(() {
                      _check = v;
                    })),
            SwitchListTile(
                activeColor: AppTheme.primary,
                title: const Text('Pene'),
                value: _check,
                onChanged: (v) => setState(() {
                      _check = v;
                    })),
            const AboutListTile(applicationName: 'Pene'),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://m.media-amazon.com/images/I/51O3P2TgvGL._AC_SX679_.jpg'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
          ],
        ));
  }
}
