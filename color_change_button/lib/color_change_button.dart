library color_change_button;

import 'package:flutter/material.dart';

class ColorChangeButton extends StatefulWidget {
  @override
  _ColorChangeButtonState createState() => _ColorChangeButtonState();
}

class _ColorChangeButtonState extends State<ColorChangeButton> {
  Color buttonColor = Colors.blue; // Initial button color

  void _changeColor() {
    setState(() {
      // Change color when button is clicked
      buttonColor = buttonColor == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
        onPressed: _changeColor,
        child: Text('Click Me'),
      ),
    );
  }
}
