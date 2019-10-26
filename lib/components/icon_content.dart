import 'package:flutter/material.dart';

import '../constants.dart';

class IconContent extends StatelessWidget {
  final Icon icon;
  final String text;

  IconContent({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        icon,
        SizedBox(
          height: 15.0,
        ),
        Text(text, style: kLabeltextstyle)
      ],
    );
  }
}
