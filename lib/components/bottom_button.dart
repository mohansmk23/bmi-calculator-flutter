import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function ontap;
  final String text;

  BottomButton({@required this.ontap, @required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: Text(text, style: kLargeButtonTextstyle),
        ),
        color: kBottomcontainercolor,
        width: double.infinity,
        height: kBottomcontainerheight,
      ),
    );
  }
}
