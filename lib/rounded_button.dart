import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String buttonText;
  final double buttonSize;
  final Colors funcButtonColor;
  final Function mathOperaton;

  const RoundedButton(
      {this.buttonText,
      this.buttonSize,
      this.funcButtonColor,
      this.mathOperaton});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.0,
      child: ElevatedButton(
        style: ButtonStyle(),
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 40.0,
            ),
          ),
        ),
      ),
    );
  }
}
