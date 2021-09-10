import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String buttonName;
  final Function buttonFunction;
  final bool isDarkTheme;

  const RoundedButton({this.buttonName, this.buttonFunction, this.isDarkTheme});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.0,
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 71.0),
        child: ElevatedButton(
          style: (buttonName == '=' && !isDarkTheme)
              ? ElevatedButton.styleFrom(primary: Colors.orangeAccent)
              : (buttonName == '=' && isDarkTheme)
                  ? ElevatedButton.styleFrom(
                      side: BorderSide(width: 5.0, color: Colors.orangeAccent))
                  : (buttonName == '+' && !isDarkTheme ||
                          buttonName == '-' && !isDarkTheme ||
                          buttonName == '×' && !isDarkTheme ||
                          buttonName == '/' && !isDarkTheme)
                      ? ElevatedButton.styleFrom(primary: Colors.amber[200])
                      : (buttonName == '+' && isDarkTheme ||
                              buttonName == '-' && isDarkTheme ||
                              buttonName == '×' && isDarkTheme ||
                              buttonName == '/' && isDarkTheme)
                          ? ElevatedButton.styleFrom(
                              side: BorderSide(
                                  width: 5.0, color: Colors.amber[200]))
                          : null,
          onPressed: buttonFunction,
          child: Text(
            buttonName,
            style: TextStyle(
              fontSize: buttonName == 'CA' ? 35 : 40,
            ),
          ),
        ),
      ),
    );
  }
}
