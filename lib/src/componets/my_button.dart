import 'package:flutter/material.dart';

import 'color_style.dart';

class MyButton extends StatelessWidget {
  const MyButton({
      super.key,
      required double buttonPropotion,
      required double marginSize,
      required String label,
      required bool isPrimary,
      required VoidCallback onPressedButton,
    }) : _buttonPropotion = buttonPropotion,
        _marginSize = marginSize,
        _label = label,
        _isPrimary = isPrimary,
        _onPressedButton = onPressedButton;

  final double _buttonPropotion;
  final double _marginSize;
  final String _label;
  final bool _isPrimary;
  final VoidCallback _onPressedButton;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * _buttonPropotion - _marginSize,
      height: 62,
      child: OutlinedButton(
        onPressed: _onPressedButton,
        style: OutlinedButton.styleFrom(
          backgroundColor: _isPrimary ? Color.fromARGB(255, 248, 207, 25) : Color.fromARGB(255, 248, 207, 25),
          side: const BorderSide(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
        child: Text(
          _label,
          style: TextStyle(
            color: _isPrimary ? Color.fromARGB(255, 0, 0, 0) : Color.fromARGB(255, 0, 0, 0)
          ),
        ),
      ),
    );
  }
}