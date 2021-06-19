import 'dart:io';

import 'package:dojin_hub/app/style_constants.dart';
import 'package:dojin_hub/di/screen_model_provider.dart';
import 'package:dojin_hub/domain/entity/dojin_event.dart';
import 'package:dojin_hub/domain/entity/edition.dart';
import 'package:dojin_hub/domain/entity/product.dart';
import 'package:dojin_hub/log/debug_log.dart';
import 'package:dojin_hub/router/router.dart';
import 'package:dojin_hub/ui/component/button/primary_button.dart';
import 'package:dojin_hub/ui/screen/screen_type.dart';
import 'package:dojin_hub/ui/screen_model/product_detail_screen_model.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductDetailScreen extends HookWidget implements ScreenType {
  final Product _product;

  ProductDetailScreen(this._product);

  @override
  Widget build(BuildContext context) {
    var screenModel = useProvider(productDetailScreenModelProvider(_product));
    var screenModelController =
        useProvider(productDetailScreenModelProvider(_product).notifier);

    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            _buildCoverImageArea(context, screenModel, screenModelController),
            _buildTitle(screenModel.product),
            ..._buildEditionsArea(context, screenModel.product.editions),
            _buildAttendedDojinEventArea(screenModel),
            _buildGraphArea(screenModel),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(Product product) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Text(
        product.title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  List<Widget> _buildEditionsArea(
    BuildContext context,
    List<Edition> editions,
  ) {
    final buildListTile = (BuildContext context, Edition edition) {
      return Container(
        height: 200,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                edition.numberString,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                'hoge',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      );
    };

    return editions.isEmpty
        ? [
            PrimaryButton(
                label: 'edit Edition',
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteName.edit_edition);
                }),
          ]
        : [
            ListView.builder(
              shrinkWrap: true,
              itemCount: editions.length,
              itemBuilder: (BuildContext context, int index) =>
                  buildListTile(context, editions[index]),
            )
          ];
  }

  Widget _buildCoverImageArea(
      BuildContext context,
      ProductDetailScreenModel screenModel,
      ProductDetailScreenModelController screenModelController) {
    // FIXME: isCoverは設計がよくない
    final buildCoverImage = (String imagePath, bool isCover) => Container(
          child: SizedBox(
            height: 200,
            child: InkWell(
              onTap: () async {
                FilePickerResult? result =
                    await FilePicker.platform.pickFiles(allowMultiple: false);
                if (result != null) {
                  var path = result.files.single.path;
                  if (path != null) {
                    if (isCover) {
                      screenModelController.updateCoverImagePath(path);
                    } else {
                      screenModelController.updateBackCoverImagePath(path);
                    }
                  } else {
                    DebugLog.d('path is null');
                  }
                } else {
                  DebugLog.d('User canceled the picker');
                }
              },
              child: imagePath.isNotEmpty
                  ? Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          alignment: FractionalOffset.center,
                          image: Image.file(
                            File(imagePath),
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

    return Row(
      children: [
        Expanded(
            child: buildCoverImage(screenModel.product.coverImagePath, true)),
        Expanded(
            child:
                buildCoverImage(screenModel.product.backCoverImagePath, false)),
      ],
    );
  }

  Widget _buildAttendedDojinEventArea(ProductDetailScreenModel screenModel) {
    final chip = (String label) => Chip(
          label: Text(label),
        );

    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            child: Text(
              '参加したイベント',
              style: TextStyle(
                fontSize: AppFontSize.title,
                fontWeight: AppFontWeight.title,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            alignment: Alignment.topLeft,
            child: Wrap(
              spacing: 8,
              children: screenModel.product.atendedEvents
                  .map(
                    (DojinEvent e) => chip(e.title),
                  )
                  .toList()
                    ..add(
                      Chip(
                        label: Icon(
                          Icons.add,
                          size: 15,
                        ),
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGraphArea(ProductDetailScreenModel screenModel) {
    return Center();
  }
}
