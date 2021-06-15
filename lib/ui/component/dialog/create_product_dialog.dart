import 'dart:io';

import 'package:dojin_hub/log/debug_log.dart';
import 'package:dojin_hub/ui/component/button/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// tips: https://qiita.com/hiesiea/items/807e3ca2b57ed37e4a9b
class AppDialog {
  static AppDialog? _instance;

  AppDialog._();

  factory AppDialog() => _instance == null ? AppDialog._() : _instance!;

  void show(
    BuildContext context,
    DialogType dialogType,
  ) async {
    final param;
    final barrierDismissible;
    switch (dialogType) {
      case DialogType.createProduct:
        param = _DialogParam(
          title: '作品を登録する',
          content: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('作品登録'),
                Row(
                  children: [
                    Expanded(
                      child: PrimaryButton(
                        label: 'キャンセル',
                        onPressed: () {},
                      ),
                    ),
                    Expanded(
                      child: PrimaryButton(
                        label: '登録',
                        color: Colors.blue,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
        barrierDismissible = false;
        break;
      default:
        param = _DialogParam(
          title: 'hoge',
          content: Center(
            child: Text('ほげ'),
          ),
        );
        barrierDismissible = true;
        break;
    }

    if (Platform.isIOS) {
      await showCupertinoDialog<void>(
        context: context,
        barrierDismissible: barrierDismissible,
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
        barrierDismissible: barrierDismissible,
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

  Widget _createDialog(BuildContext context, _DialogParam param) {
    if (Platform.isIOS) {
      return CupertinoAlertDialog(
        title: Text(param.title),
        content: param.content,
        actions: param.actions ?? [],
      );
    } else {
      return AlertDialog(
        title: Text(param.title),
        content: param.content,
        actions: param.actions,
      );
    }
  }
}

class _DialogParam {
  final String title;
  final Widget content;
  List<Widget>? actions;

  _DialogParam({
    required this.title,
    required this.content,
    this.actions,
  });
}

enum DialogType {
  createProduct,
}
