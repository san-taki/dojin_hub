import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_type.freezed.dart';

@freezed
class InputType with _$InputType {
  const factory InputType.text() = _Text;
  const factory InputType.number() = _Number;
}

extension InputTypeExt on InputType {
  List<TextInputFormatter> inputFormatters() {
    return this.when(
      text: () => [],
      number: () => [
        FilteringTextInputFormatter.digitsOnly,
      ],
    );
  }

  bool obscureText() {
    return this.when(
      text: () => false,
      number: () => false,
    );
  }

  Widget? suffixIcon() {
    return this.when(
      text: () => null,
      number: () => null,
    );
  }

  TextInputType keyboardType() {
    return this.when(
      text: () => TextInputType.text,
      number: () => TextInputType.number,
    );
  }
}
