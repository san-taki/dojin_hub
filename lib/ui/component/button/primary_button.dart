import 'package:dojin_hub/ui/component/button/component_type.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends ComponentType {
  final String label;
  final Function onPressed;
  final double? height;
  final double? width;
  final double radius;
  final MaterialColor color;

  PrimaryButton({
    required this.label,
    required this.onPressed,
    this.height,
    this.width,
    this.radius = 4,
    this.color = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      onPressed: () => onPressed(),
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
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}