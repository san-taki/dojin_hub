import 'package:dojin_hub/selection/input_type.dart';
import 'package:dojin_hub/ui/component/button/component_type.dart';
import 'package:dojin_hub/ui/listener/text_field_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextForm extends ComponentType {
  final InputType type;
  final String label;
  final TextFieldListener listener;
  final int maxLength;
  final Function(String? value)? validator;

  TextForm({
    this.type = const InputType.text(),
    required this.label,
    required this.listener,
    this.maxLength = 1000,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        height: 56,
        child: Theme(
          data: Theme.of(context),
          child: TextFormField(
            maxLength: maxLength,
            focusNode: listener.focusNode,
            controller: listener.editingController,
            obscureText: type.obscureText(),
            style: TextStyle(color: Colors.black),
            maxLines: 1,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: type.keyboardType(),
            validator: validator != null ? (String? v) => validator!(v) : null,
            inputFormatters: type.inputFormatters(),
            onFieldSubmitted: (_) => listener.unFocus(context),
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                counterText: "",
                // カウンター表示するならこの行を消す
                border: UnderlineInputBorder(),
                labelText: label,
                suffixIcon: type.suffixIcon(),
                errorText: null),
          ),
        ),
      ),
    );
  }
}
