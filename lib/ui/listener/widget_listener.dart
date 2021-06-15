import 'package:dojin_hub/log/debug_log.dart';
import 'package:flutter/widgets.dart';

abstract class WidgetListener {
  final FocusNode focusNode = FocusNode();

  WidgetListener();

  void requestFocus(BuildContext context) {
    FocusScope.of(context).requestFocus(focusNode);
  }

  void unFocus(BuildContext context) {
    DebugLog.d('call unFocus');
    FocusScope.of(context).unfocus();
  }

  void onHasFocus(Function f) {
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        f();
      }
    });
  }

  void onLostFocus(Function f) {
    focusNode.addListener(() {
      if (!focusNode.hasFocus) {
        f();
      }
    });
  }

  void dispose() {
    focusNode.dispose();
  }
}
