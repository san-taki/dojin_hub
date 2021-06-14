import 'package:dojin_hub/ui/component/button/component_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends ComponentType {
  final String label;
  final Function onPressed;
  final double? width;
  final double? height;
  final double radius;
  final MaterialColor color;
  final double elevation;

  SecondaryButton({
    required this.label,
    required this.onPressed,
    this.width,
    this.height,
    this.radius = 0,
    this.elevation = 0,
    this.color = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: color),
        primary: color,
      ),
      onPressed: () => onPressed,
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.only(
          left: 32,
          top: 16,
          right: 32,
          bottom: 16,
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
