import 'dart:io';

import 'package:dojin_hub/app/data_model/app_colors.dart';
import 'package:dojin_hub/app/style_constants.dart';
import 'package:dojin_hub/di/app_provider.dart';
import 'package:dojin_hub/di/screen_model_provider.dart';
import 'package:dojin_hub/domain/entity/dojin_event.dart';
import 'package:dojin_hub/domain/entity/edition.dart';
import 'package:dojin_hub/log/debug_log.dart';
import 'package:dojin_hub/ui/component/pie_chart/app_pie_chart.dart';
import 'package:dojin_hub/ui/screen/screen_type.dart';
import 'package:dojin_hub/ui/screen_model/product_detail_screen_model.dart';
import 'package:dojin_hub/util/text_util.dart';
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
                        screenModelController,
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
    ProductDetailScreenModelController screenModelController,
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
            _buildScrollHandle(context, appColors),
            _buildEditionsArea(screenModel, appColors),
            _buildBookInfoWindow(
                context, appColors, screenModel.product.editions[0]),
            Padding(padding: const EdgeInsets.all(4)),
            _buildTotalCountArea(context, appColors, screenModel),
            Padding(padding: const EdgeInsets.all(4)),
            _buildSaleStateWindow(context, appColors, screenModelController),
            Padding(padding: const EdgeInsets.all(8)),
            _buildOutSourcingStateWindow(
                context, appColors, screenModelController),
            Padding(padding: const EdgeInsets.all(8)),
            _buildStockStateWindow(context, appColors, screenModelController),
            Padding(padding: const EdgeInsets.all(20)),
            _buildAdArea(context),
          ],
        ),
      ),
    );
  }

  Widget _buildScrollHandle(
    BuildContext context,
    AppColors appColors,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width / 5,
      height: 5,
      decoration: BoxDecoration(
        color: appColors.base,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  Widget _buildTotalCountArea(
    BuildContext context,
    AppColors appColors,
    ProductDetailScreenModel screenModel,
  ) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 4,
            ),
            child: Text(
              '頒布数 / 発行部数',
              style: TextStyle(
                fontSize: AppFontSize.caption,
                fontWeight: AppFontWeight.caption,
                color: appColors.primaryText,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
              color: appColors.base,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              border: Border.all(
                color: appColors.primaryVariant,
                width: 1,
              ),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 4,
            ),
            child: Text(
              '${screenModel.product.stockCount} / ${screenModel.product.totalPublicationCount}',
              style: TextStyle(
                color: appColors.primaryVariant,
                fontSize: AppFontSize.title,
                fontWeight: AppFontWeight.title,
              ),
            ),
          ),
        ),
      ],
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
              _buildScrollHandle(
                context,
                appColors,
              ),
              Container(
                height: 40,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  alignment: Alignment.centerRight,
                  child: ActionChip(
                    shadowColor: appColors.primary,
                    label: Text(
                      'フィルター',
                      style: TextStyle(
                        color: appColors.primaryText,
                      ),
                    ),
                    onPressed: () {
                      DebugLog.d('フィルター');
                    },
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
                  child: ActionChip(
                    shadowColor: appColors.primary,
                    backgroundColor: appColors.primaryVariant,
                    label: Text(
                      e.numberString,
                      style: TextStyle(
                        color: appColors.primaryText,
                      ),
                    ),
                    onPressed: () {},
                  ),
                );
              },
            ).toList()
              ..add(
                Container(
                  height: 35,
                  width: 35,
                  child: AspectRatio(
                    aspectRatio: 1.0,
                    child: ActionChip(
                      shadowColor: appColors.primary,
                      backgroundColor: appColors.primaryVariant,
                      label: Text(
                        '+',
                        style: TextStyle(
                          color: appColors.primaryText,
                        ),
                      ),
                      onPressed: () {},
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
    Edition edition,
  ) {
    final child = (String label, String description) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: appColors.accent,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                child: Text(
                  label,
                  style: TextStyle(
                    color: appColors.primaryText,
                    fontSize: AppFontSize.caption,
                    fontWeight: AppFontWeight.caption,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 4,
              ),
              child: Text(description),
            ),
          ],
        );

    return _buildInfoWindow(
      context,
      appColors,
      '作品情報',
      Container(
        padding: EdgeInsets.all(8),
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            child('印刷所', edition.printShop?.name ?? '-'),
            child('ページ数', '${edition.page ?? '-'}'),
            child('印刷日', '${edition.publicationDate ?? '-'}'),
            child('印刷費', '${TextUtil.toPriceLabel(edition.printingCosts)}円'),
          ],
        ),
      ),
    );
  }

  Widget _buildSaleStateWindow(
    BuildContext context,
    AppColors appColors,
    ProductDetailScreenModelController modelController,
  ) {
    return _buildInfoWindow(
      context,
      appColors,
      '販売状況',
      Center(
        child: AppPieChart(modelController.getPieChartSaleItems()),
      ),
    );
  }

  Widget _buildOutSourcingStateWindow(
    BuildContext context,
    AppColors appColors,
    ProductDetailScreenModelController modelController,
  ) {
    return _buildInfoWindow(
      context,
      appColors,
      '委託状況',
      Center(
        child: AppPieChart(modelController.getPieChartSaleItems()),
      ),
    );
  }

  Widget _buildStockStateWindow(
    BuildContext context,
    AppColors appColors,
    ProductDetailScreenModelController modelController,
  ) {
    return _buildInfoWindow(
      context,
      appColors,
      '在庫状況',
      Center(
        child: AppPieChart(modelController.getPieChartSaleItems()),
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
