import 'package:flutter/material.dart';

/*==================Extracted widget================*/

class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.chosenColor, this.cardChild, this.onPress});
  final Color chosenColor;
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: chosenColor,
        ),
      ),
    );
  }
}
