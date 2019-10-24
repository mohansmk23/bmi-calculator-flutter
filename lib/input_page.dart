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
  int weight = 50;
  int age = 20;

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
                  SliderTheme(
                    data: SliderThemeData().copyWith(
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double newvalue) {
                        setState(() {
                          height = newvalue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kActivecardcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "WEIGHT",
                          style: kLabeltextstyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kBigtextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onpressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onpressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActivecardcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "AGE",
                          style: kLabeltextstyle,
                        ),
                        Text(
                          age.toString(),
                          style: kBigtextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onpressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onpressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
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
