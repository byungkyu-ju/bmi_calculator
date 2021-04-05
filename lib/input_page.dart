import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  customColor: selectedGender == Gender.male
                      ? kActiveCardCustomColor
                      : kInactiveCardCustomColor,
                  cardChild: IconContext(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    selectedGender = Gender.female;
                  },
                  customColor: selectedGender == Gender.female
                      ? kActiveCardCustomColor
                      : kInactiveCardCustomColor,
                  cardChild: IconContext(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
                customColor: kActiveCardCustomColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0XFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB155),
                        overlayColor: Color(0x29EB155),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        activeColor: Color(0xFFEB1555),
                        inactiveColor: Color(0XFF8D8E98),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                )),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  customColor: Colors.blue,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  customColor: kActiveCardCustomColor,
                ),
              ),
            ],
          )),
          Container(
            color: kBottomCardCustomColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
      floatingActionButton: Theme(
        data: ThemeData(accentColor: Colors.purple),
        child: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
