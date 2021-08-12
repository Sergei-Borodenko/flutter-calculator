import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String buttonName;
  final Function buttonFunction;

  const RoundedButton({this.buttonName, this.buttonFunction});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.0,
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 71.0),
        child: ElevatedButton(
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
