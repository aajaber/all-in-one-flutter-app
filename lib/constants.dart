import 'dart:ui';
import 'package:flutter/material.dart';

/*================================================== TextSyles =============================== */
const kLabelTextStyle = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));
const kNumberTextStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900);
const kLargeButtonTextStyle =
    TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);

const kTitleTextStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold);
const kResultTextStyle = TextStyle(
    fontSize: 22.0, fontWeight: FontWeight.bold, color: kResultWordColor);

const kBMITextStyle = TextStyle(fontSize: 90.0, fontWeight: FontWeight.bold);
const kBodyTextStyle = TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold);

/*================================================== Sizes =============================== */
const kIconSize = 80.0;
const kGapSize = 15.0;
const kBottomContainerHeight = 65.0;

/*================================================== Colors =============================== */
const kBottomContainerColor = Color(0xFF4DB6AC);
const kSliderInActiveColor = Color(0xFF8D8E98);
const kActiveCardColor = Color(0xFF1D1E33);
const kInActiveCardColor = Color(0xFF111328);
const kResultWordColor = Color(0xFF24D876);

/* ================================================= Extraxted Widget ================== */

class RoundIconButton extends StatelessWidget {
  RoundIconButton(
      {@required this.icon,
      this.iconColor,
      @required this.onPressed,
      this.value});
  final IconData icon;
  final Color iconColor;
  final Function onPressed;
  final int value;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: iconColor,
      ),
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0XFF4C4F5E),
      onPressed: onPressed,
    );
  }
}

/* ================================================= Extraxted Widget ================== */

class CalculatingButton extends StatelessWidget {
  CalculatingButton({this.onTap, this.buttonTitle});
  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
