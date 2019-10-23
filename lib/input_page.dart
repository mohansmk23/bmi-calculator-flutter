import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'icon_content.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedgender;
  int height = 120;

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
                      onpress: () {
                        setState(() {
                          selectedgender = Gender.male;
                        });
                      },
                      colour: selectedgender == Gender.male
                          ? kActivecardcolor
                          : kInactivecardcolor,
                      cardchild: IconContent(
                        icon: Icon(
                          FontAwesomeIcons.mars,
                          size: 80.0,
                        ),
                        text: 'MALE',
                      )),
                ),
                Expanded(
                  child: ReusableCard(
                      onpress: () {
                        setState(() {
                          selectedgender = Gender.female;
                        });
                      },
                      colour: selectedgender == Gender.female
                          ? kActivecardcolor
                          : kInactivecardcolor,
                      cardchild: IconContent(
                        icon: Icon(
                          FontAwesomeIcons.venus,
                          size: 80.0,
                        ),
                        text: 'FEMALE',
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActivecardcolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "HEIGHT",
                    style: kLabeltextstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.ideographic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kBigtextstyle,
                      ),
                      Text(
                        "cm",
                        style: kLabeltextstyle,
                      )
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 220,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newvalue) {
                      setState(() {
                        height = newvalue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: kActivecardcolor),
                ),
                Expanded(
                  child: ReusableCard(colour: kActivecardcolor),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomcontainercolor,
            width: double.infinity,
            height: kBottomcontainerheight,
          )
        ],
      ),
    );
  }
}
