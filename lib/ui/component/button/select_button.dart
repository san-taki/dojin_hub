import 'package:dojin_hub/ui/component/button/component_type.dart';
import 'package:flutter/material.dart';

class SelectButton extends ComponentType {
  final String label;
  final Function onPressed;
  final double radius;
  final MaterialColor color;

  SelectButton({
    required this.label,
    required this.onPressed,
    this.radius = 4,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          elevation: 0,
        ),
        onPressed: () => onPressed(),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
