import 'package:dojin_hub/di/app_provider.dart';
import 'package:dojin_hub/ui/component/button/component_type.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
    var appColors = useProvider(appColorsProvider).state;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: appColors.primaryVariant,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      onPressed: () => onPressed(),
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.only(
          left: 16,
          top: 8,
          right: 16,
          bottom: 8,
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: appColors.primaryText,
            ),
          ),
        ),
      ),
    );
  }
}
