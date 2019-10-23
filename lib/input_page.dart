import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';

const bottomcontainerheight = 60.0;
const activecardcolor = Color(0xFF1D1F33);
const inactivecardcolor = Color(0xFF111328);
const bottomcontainercolor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecolor = inactivecardcolor;
  Color femalecolor = inactivecardcolor;

  void updatecolor(int gender){


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: ReusableCard(
                        colour: activecardcolor,
                        cardchild: IconContent(
                          icon: Icon(
                            FontAwesomeIcons.mars,
                            size: 80.0,
                          ),
                          text: 'MALE',
                        )),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: ReusableCard(
                        colour: inactivecardcolor,
                        cardchild: IconContent(
                          icon: Icon(
                            FontAwesomeIcons.venus,
                            size: 80.0,
                          ),
                          text: 'FEMALE',
                        )),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: activecardcolor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: activecardcolor),
                ),
                Expanded(
                  child: ReusableCard(colour: activecardcolor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomcontainercolor,
            width: double.infinity,
            height: bottomcontainerheight,
          )
        ],
      ),
    );
  }
}
