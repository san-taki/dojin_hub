import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

enum InputType {
  Text,
  Number,
  // and more..
}

extension InputTypeExt on InputType {
  List<TextInputFormatter> inputFormatters() {
    switch (this) {
      case InputType.Text:
        return [];
      case InputType.Number:
        return [
          FilteringTextInputFormatter.digitsOnly,
        ];
    }
  }

  bool obscureText() {
    switch (this) {
      case InputType.Text:
        return false;
      case InputType.Number:
        return false;
    }
  }

  Widget? suffixIcon() {
    switch (this) {
      case InputType.Text:
        return null;
      case InputType.Number:
        return null;
    }
  }

  TextInputType keyboardType() {
    switch (this) {
      case InputType.Text:
        return TextInputType.text;
      case InputType.Number:
        return TextInputType.number;
    }
  }
}