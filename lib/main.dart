import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        accentColor: Colors.purple,

        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.white,
          thumbColor: Color(0xFFEB155),
          overlayColor: Color(0x29EB155),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
        )
      ),
      home: InputPage(),
    );
  }
}
