import 'dart:io';

import 'package:dojin_hub/log/debug_log.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// tips: https://qiita.com/hiesiea/items/807e3ca2b57ed37e4a9b
class AppDialog {
  static AppDialog? _instance;

  AppDialog._();

  factory AppDialog() => _instance == null ? AppDialog._() : _instance!;

  void show(
    BuildContext context,
    DialogParam param,
  ) async {
    if (Platform.isIOS) {
      await showCupertinoDialog<void>(
        context: context,
        barrierDismissible: param.barrierDismissible(),
        builder: (BuildContext context) {
          return _createDialog(context, param);
        },
      ).then((val) {
        // ダイアログを閉じたあとの処理
        DebugLog.d('dialog then');
      });
    } else {
      await showDialog<void>(
        context: context,
        barrierDismissible: param.barrierDismissible(),
        builder: (BuildContext context) {
          return _createDialog(context, param);
        },
      ).then((val) {
        // ダイアログを閉じたあとの処理
        DebugLog.d('dialog then');
      });
    }
  }

  void dismiss(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop();
  }

  Widget _createDialog(BuildContext context, DialogParam param) {
    if (Platform.isIOS) {
      return CupertinoAlertDialog(
        title: param.title() == null ? null : Text(param.title()!),
        content: param.content(),
        actions: param.actions(),
      );
    } else {
      return AlertDialog(
        title: param.title() == null ? null : Text(param.title()!),
        content: param.content(),
        actions: param.actions(),
      );
    }
  }
}

abstract class DialogParam {
  List<Widget> actions();
  bool barrierDismissible();
  Widget? content();
  String? title();
}

class ErrorDialogParam extends DialogParam {
  final BuildContext context;
  final Function(bool) onAction;
  final String message;

  ErrorDialogParam({
    required this.context,
    required this.onAction,
    required this.message,
  });

  @override
  List<Widget> actions() => [
        TextButton(
          child: Text('OK'),
          onPressed: () => onAction(true),
        ),
        TextButton(
          child: Text('キャンセル'),
          onPressed: () => onAction(false),
        )
      ];

  @override
  bool barrierDismissible() => false;

  @override
  Widget? content() => Container(
        child: Text(message),
      );

  @override
  String? title() => null;
}
