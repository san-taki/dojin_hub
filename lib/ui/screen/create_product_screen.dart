import 'dart:io';

import 'package:dojin_hub/log/debug_log.dart';
import 'package:dojin_hub/provider/screen_model_provider.dart';
import 'package:dojin_hub/ui/component/dialog/alert_dialog.dart';
import 'package:dojin_hub/ui/component/text_field/text_field.dart';
import 'package:dojin_hub/ui/screen/screen_type.dart';
import 'package:dojin_hub/ui/screen_model/create_product_screen_model.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreateProductScreen extends HookWidget implements ScreenType {
  @override
  Widget build(BuildContext context) {
    var screenModel = useProvider(createProductScreenModelProvider);

    return GestureDetector(
      onTap: () => screenModel.fullScreenListener.requestFocus(context),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: 56,
              width: double.infinity,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        AppDialog(
                          context,
                          ErrorDialogParam(
                            context: context,
                            onAction: (result) => Navigator.pop(context),
                            message: '編集中のデータを破棄します。よろしいですか？',
                          ),
                        ).show();
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      iconSize: 24,
                      icon: Icon(
                        Icons.save_alt,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        if (screenModel.textFieldListener.text.isEmpty) {
                          _showErrorToast();
                          return;
                        }
                        screenModel.saveProduct();
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      '新しい作品を登録する',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildImageWindow(context, screenModel),
                  TextForm(
                    label: '作品名',
                    listener: screenModel.textFieldListener,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildImageWindow(
    BuildContext context,
    CreateProductScreenModel screenModel,
  ) {
    return Container(
      child: SizedBox(
        height: 150,
        width: 150,
        child: InkWell(
          onTap: () async {
            FilePickerResult? result =
                await FilePicker.platform.pickFiles(allowMultiple: false);
            if (result != null) {
              var path = result.files.single.path;
              if (path != null) {
                screenModel.setThumbnailPath(path);
              } else {
                DebugLog.d('path is null');
              }
            } else {
              DebugLog.d('User canceled the picker');
            }
          },
          child: screenModel.coverImagePath.isNotEmpty
              ? Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      alignment: FractionalOffset.center,
                      image: Image.file(
                        File(screenModel.coverImagePath),
                        fit: BoxFit.cover,
                      ).image,
                    ),
                  ),
                )
              : Container(
                  color: Colors.grey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      Text(
                        'サムネイルを追加',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }

  void _showErrorToast() {
    Fluttertoast.showToast(
      msg: 'エラー',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black54,
      textColor: Colors.white,
      fontSize: 12,
    );
  }
}
