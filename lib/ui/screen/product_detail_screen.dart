import 'dart:io';

import 'package:dojin_hub/app/style_constants.dart';
import 'package:dojin_hub/di/screen_model_provider.dart';
import 'package:dojin_hub/domain/entity/dojin_event.dart';
import 'package:dojin_hub/domain/entity/edition.dart';
import 'package:dojin_hub/domain/entity/product.dart';
import 'package:dojin_hub/log/debug_log.dart';
import 'package:dojin_hub/router/router.dart';
import 'package:dojin_hub/ui/component/button/primary_button.dart';
import 'package:dojin_hub/ui/component/pie_chart/pie_chart.dart';
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

    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        color: Colors.blueGrey,
        child: Column(
          children: [
            _buildCoverImageArea(context, screenModel, screenModelController),
            _buildAttendedDojinEventArea(screenModel),
            _buildGraphArea(screenModel),
          ],
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
    final buildCoverImage = (String imagePath) => Container(
          child: SizedBox(
            height: _getBookCoverImageHeight(context),
            child: InkWell(
              onTap: () async {
                FilePickerResult? result =
                    await FilePicker.platform.pickFiles(allowMultiple: false);
                if (result != null) {
                  var path = result.files.single.path;
                  if (path != null) {
                    screenModelController.updateCoverImagePath(path);
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
                          fit: BoxFit.fitHeight,
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

    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Row(
        children: [
          Expanded(child: buildCoverImage(screenModel.product.coverImagePath)),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              child: Text(
                screenModel.product.title,
                style: TextStyle(
                  fontSize: AppFontSize.headline,
                  fontWeight: AppFontWeight.headline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAttendedDojinEventArea(ProductDetailScreenModel screenModel) {
    final chip = (String label) => Chip(
          label: Text(label),
        );

    return Container(
      child: Card(
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
      ),
    );
  }

  Widget _buildGraphArea(ProductDetailScreenModel screenModel) {
    return Card(
      child: PieChartSample3(),
    );
  }

  Widget _buildGraphSwitch() {
    //     return RawChip(
    //   label: Text(
    //     labelText,
    //     maxLines: 2,
    //     style: themeViewModel.primaryTextTheme.caption,
    //   ),
    // );
    return Center();
  }

  double _getBookCoverImageHeight(BuildContext context) {
    // 本のA版B版ともおよそ1.4のアス比
    return (MediaQuery.of(context).size.width / 2) * 1.4;
  }
}
