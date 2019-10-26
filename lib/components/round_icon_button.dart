import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  @override
  final IconData icon;
  final Function onpressed;

  const RoundIconButton({@required this.icon, @required this.onpressed});

  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onpressed,
      elevation: 6.0,
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
    );
  }
}
