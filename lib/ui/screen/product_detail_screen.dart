import 'dart:io';

import 'package:dojin_hub/app/data_model/app_colors.dart';
import 'package:dojin_hub/app/style_constants.dart';
import 'package:dojin_hub/di/app_provider.dart';
import 'package:dojin_hub/di/screen_model_provider.dart';
import 'package:dojin_hub/domain/entity/dojin_event.dart';
import 'package:dojin_hub/log/debug_log.dart';
import 'package:dojin_hub/ui/component/pie_chart/app_pie_chart.dart';
import 'package:dojin_hub/ui/screen/screen_type.dart';
import 'package:dojin_hub/ui/screen_model/product_detail_screen_model.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductDetailScreen extends HookWidget implements ScreenType {
  ProductDetailScreen();

  @override
  Widget build(BuildContext context) {
    var screenModel = useProvider(productDetailScreenModelProvider);
    var screenModelController =
        useProvider(productDetailScreenModelProvider.notifier);

    var appColors = useProvider(appColorsProvider).state;

    var pageController = PageController();

    return Scaffold(
      backgroundColor: appColors.base,
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            height: 56,
            child: Stack(
              children: [
                Visibility(
                  visible: Navigator.of(context).canPop(),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: appColors.accentText,
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                ),
                Center(
                  child: Text(screenModel.product.title),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: Icon(
                      screenModel.isEditing ? Icons.lock_open : Icons.lock,
                      color: appColors.accentText,
                    ),
                    onPressed: () => screenModelController.togleIsEditing(),
                  ),
                ),
              ],
            ),
          ),
          _buildCoverImageArea(
            context,
            screenModel,
            screenModelController,
            appColors,
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.6,
            minChildSize: 0.6,
            builder: (BuildContext context, ScrollController scrollController) {
              return PageView.builder(
                itemCount: 2,
                controller: pageController,
                itemBuilder: (BuildContext context, int index) {
                  switch (index) {
                    case 0:
                      return _buildDetailPage(
                        context,
                        screenModel,
                        appColors,
                        scrollController,
                      );
                    case 1:
                      return _buildHistoryPage(
                        context,
                        screenModel,
                        appColors,
                        scrollController,
                      );
                    default:
                      throw AssertionError();
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDetailPage(
    BuildContext context,
    ProductDetailScreenModel screenModel,
    AppColors appColors,
    ScrollController scrollController,
  ) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      controller: scrollController,
      child: Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10,
        ),
        decoration: BoxDecoration(
          color: appColors.primary,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(30),
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildEditionsArea(screenModel, appColors),
            _buildBookInfoWindow(context, appColors),
            Padding(padding: const EdgeInsets.all(8)),
            _buildSaleStateWindow(context, appColors),
            Padding(padding: const EdgeInsets.all(8)),
            _buildOutSourcingStateWindow(context, appColors),
            Padding(padding: const EdgeInsets.all(8)),
            _buildStockStateWindow(context, appColors),
            Padding(padding: const EdgeInsets.all(20)),
            _buildAdArea(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryPage(
    BuildContext context,
    ProductDetailScreenModel screenModel,
    AppColors appColors,
    ScrollController scrollController,
  ) {
    return SingleChildScrollView(
      controller: scrollController,
      physics: BouncingScrollPhysics(),
      child: Container(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 15,
        ),
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        decoration: BoxDecoration(
          color: appColors.primary,
          borderRadius: BorderRadius.only(
            topRight: const Radius.circular(30),
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  alignment: Alignment.centerRight,
                  child: Chip(
                    label: Text(
                      'フィルター',
                      style: TextStyle(
                        color: appColors.primaryText,
                      ),
                    ),
                    backgroundColor: appColors.primaryVariant,
                  ),
                ),
              ),
              _buildInfoWindow(
                context,
                appColors,
                'ヒストリー',
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  controller: scrollController,
                  itemCount: 25,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(title: Text('Item $index'));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEditionsArea(
    ProductDetailScreenModel screenModel,
    AppColors appColors,
  ) {
    return Container(
      color: appColors.primary,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ),
        alignment: Alignment.topLeft,
        child: Container(
          alignment: Alignment.centerRight,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: List<Widget>.generate(
              screenModel.product.editions.length,
              (int index) {
                var e = screenModel.product.editions[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: ChoiceChip(
                    backgroundColor: appColors.primaryText,
                    selectedColor: appColors.primaryVariant,
                    selectedShadowColor: appColors.primaryVariant,
                    label: Text(
                      e.numberString,
                      style: TextStyle(
                        color: appColors.primaryText,
                      ),
                    ),
                    selected: true,
                    onSelected: (bool selected) {},
                  ),
                );
              },
            ).toList()
              ..add(
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: ClipOval(
                    child: Container(
                      height: 30,
                      width: 30,
                      color: appColors.primaryVariant,
                      child: Icon(
                        Icons.add,
                        size: AppFontSize.body,
                        color: appColors.primaryText,
                      ),
                    ),
                  ),
                ),
              ),
          ),
        ),
      ),
    );
  }

  Widget _buildCoverImageArea(
    BuildContext context,
    ProductDetailScreenModel screenModel,
    ProductDetailScreenModelController screenModelController,
    AppColors appColors,
  ) {
    final buildCoverImage = (String imagePath) => Container(
          padding:
              EdgeInsets.only(top: 56 + MediaQuery.of(context).padding.top),
          child: SizedBox(
            height: MediaQuery.of(context).size.width / 2 * 1.4,
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
                        color: appColors.base,
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
                      margin: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: appColors.primaryVariant,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: appColors.primaryVariant,
                          ),
                          Text(
                            'サムネイルを追加',
                            style: TextStyle(color: appColors.primaryVariant),
                          ),
                        ],
                      ),
                    ),
            ),
          ),
        );

    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Row(
        children: [
          Expanded(
            child: buildCoverImage(screenModel.product.coverImagePath),
          ),
          Expanded(
            child: buildCoverImage(screenModel.product.coverImagePath),
          ),
        ],
      ),
    );
  }

  Widget _buildBookInfoWindow(
    BuildContext context,
    AppColors appColors,
  ) {
    return _buildInfoWindow(
      context,
      appColors,
      '作品情報',
      Center(
        child: Text('hoge'),
      ),
    );
  }

  Widget _buildSaleStateWindow(
    BuildContext context,
    AppColors appColors,
  ) {
    return _buildInfoWindow(
      context,
      appColors,
      '販売状況',
      Center(
        child: AppPieChart(),
      ),
    );
  }

  Widget _buildOutSourcingStateWindow(
    BuildContext context,
    AppColors appColors,
  ) {
    return _buildInfoWindow(
      context,
      appColors,
      '委託状況',
      Center(
        child: AppPieChart(),
      ),
    );
  }

  Widget _buildStockStateWindow(
    BuildContext context,
    AppColors appColors,
  ) {
    return _buildInfoWindow(
      context,
      appColors,
      '在庫状況',
      Center(
        child: AppPieChart(),
      ),
    );
  }

  Widget _buildInfoWindow(
    BuildContext context,
    AppColors appColors,
    String label,
    Widget child,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: appColors.primaryVariant,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5,
          ),
          child: Text(
            label,
            style: TextStyle(
              fontSize: AppFontSize.body,
              fontWeight: AppFontWeight.body,
              color: appColors.primaryText,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: appColors.base,
            border: Border.all(
              color: appColors.primaryVariant,
            ),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: child,
        ),
      ],
    );
  }

  Widget _buildAdArea(BuildContext context) {
    return Container(
      height: 56,
      color: Colors.blueAccent,
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
}
