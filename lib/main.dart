import 'package:flutter/material.dart';
import 'rounded_button.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('previous operation'),
                      Text(
                        'previous operation',
                        style: TextStyle(),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RoundedButton(
                          buttonText: 'AC',
                        ),
                        RoundedButton(
                          buttonText: 'C',
                        ),
                        RoundedButton(
                          buttonText: '%',
                        ),
                        RoundedButton(
                          buttonText: '÷',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RoundedButton(
                          buttonText: '7',
                        ),
                        RoundedButton(
                          buttonText: '8',
                        ),
                        RoundedButton(
                          buttonText: '9',
                        ),
                        RoundedButton(
                          buttonText: '×',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RoundedButton(
                          buttonText: '4',
                        ),
                        RoundedButton(
                          buttonText: '5',
                        ),
                        RoundedButton(
                          buttonText: '6',
                        ),
                        RoundedButton(
                          buttonText: '-',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RoundedButton(
                          buttonText: '1',
                        ),
                        RoundedButton(
                          buttonText: '2',
                        ),
                        RoundedButton(
                          buttonText: '3',
                        ),
                        RoundedButton(
                          buttonText: '+',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RoundedButton(
                          buttonText: '+/-',
                        ),
                        RoundedButton(
                          buttonText: '0',
                        ),
                        RoundedButton(
                          buttonText: '.',
                        ),
                        RoundedButton(
                          buttonText: '=',
                        ),
                      ],
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
