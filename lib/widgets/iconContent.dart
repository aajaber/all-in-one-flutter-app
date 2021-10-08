import 'package:flutter/material.dart';

import '../constants.dart';
/*==================Extracted Widget============= */

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: kIconSize),
        SizedBox(height: kGapSize),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
