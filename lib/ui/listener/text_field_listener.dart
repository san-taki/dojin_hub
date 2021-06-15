import 'package:flutter/widgets.dart';

import 'widget_listener.dart';

class TextFieldListener extends WidgetListener {
  final TextEditingController editingController = TextEditingController();

  String get text => editingController.text;

  set text(String newText) {
    editingController.text = newText;
  }

  @override
  void dispose() {
    editingController.dispose();
    super.dispose();
  }
}
