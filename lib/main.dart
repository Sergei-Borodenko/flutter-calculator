import 'package:flutter/material.dart';
import 'rounded_button.dart';
import 'package:math_expressions/math_expressions.dart';
import 'constans.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String calculatedText = ' ';
  String previousCalculatedText = ' ';
  Parser p = Parser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.teal[100],
            shape: CircleBorder(),
            padding: EdgeInsets.all(0),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        previousCalculatedText,
                        style:
                            TextStyle(fontSize: 20.0, color: Colors.blueGrey),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        calculatedText,
                        style: TextStyle(
                            fontSize: calculatedText.length < 10 ? 50 : 30),
                      ),
                      Divider(
                        thickness: 1,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (var i = 0; i < rowList.length; i++)
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            for (var item in rowList[i].entries)
                              RoundedButton(
                                buttonName: item.key,
                                buttonFunction: () {
                                  var myFanc = item.value;
                                  setState(
                                    () {
                                      if (item.key == '=') {
                                        String result =
                                            myFanc(calculatedText, p);
                                        if (result != 'bad expression') {
                                          previousCalculatedText =
                                              calculatedText;
                                          calculatedText = result;
                                        }
                                      } else if (item.key == 'CA') {
                                        previousCalculatedText = ' ';
                                        calculatedText =
                                            myFanc(calculatedText, item.key);
                                      } else if (calculatedText.length > 50) {
                                        if (item.key == 'C' ||
                                            item.key == '<') {
                                          calculatedText =
                                              myFanc(calculatedText, item.key);
                                        } else {
                                          //TODO show message "too many symbols"
                                        }
                                      } else {
                                        calculatedText =
                                            myFanc(calculatedText, item.key);
                                      }
                                    },
                                  );
                                },
                              )
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
