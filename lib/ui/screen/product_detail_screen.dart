import 'dart:io';

import 'package:dojin_hub/log/debug_log.dart';
import 'package:dojin_hub/provider/screen_model_provider.dart';
import 'package:dojin_hub/ui/screen/screen_type.dart';
import 'package:dojin_hub/ui/screen_model/product_detail_screen_model.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductDetailScreen extends HookWidget implements ScreenType {
  @override
  Widget build(BuildContext context) {
    var screenModel = useProvider(productDetailScreenModelProvider);

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            _buildImageWindow(context, screenModel),
            Center(child: Text(screenModel.product.title)),
          ],
        ),
      ),
    );
  }

  Widget _buildImageWindow(
    BuildContext context,
    ProductDetailScreenModel screenModel,
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
          child: screenModel.product.thumbnailPath.isNotEmpty
              ? Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      alignment: FractionalOffset.center,
                      image: Image.file(
                        File(screenModel.product.thumbnailPath),
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
}
