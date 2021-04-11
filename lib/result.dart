import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input.dart';
import 'calculate.dart';
import 'contraints.dart';
import 'reusable.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpetation});

  final String bmiResult;
  final String resultText;
  final String interpetation;
  //final double height = 400;
  final _showToast = () => Fluttertoast.showToast(
        msg: 'Data-Saved',
        toastLength: Toast.LENGTH_SHORT,
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Your Result',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
            ),

            //textAlign: TextAlign.end,
          ),
          Expanded(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardColor: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          resultText,
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.green,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          bmiResult,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 80.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'Normal BMI range:',
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '18.8 - 25 kg/m^2',
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          interpetation,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        OutlineButton(
                          color: Color(0xFF1D1F33),
                          onPressed: _showToast,
                          child: Text(
                            'SAVE',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              //Navigator.pop((context) => InputPage());
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text(
                  'RE-CALCULATE BMI',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              width: double.infinity,
              height: bottomContainerHeight,
              color: bottomContainerColor,
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.only(bottom: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
