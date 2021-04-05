import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.customColor, this.cardChild, this.onPress});

  final Color customColor;
  final Widget cardChild;
  final Function onPress;

  //Color(0xFF1D1E33)
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: customColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}