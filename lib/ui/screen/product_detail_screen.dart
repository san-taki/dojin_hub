import 'dart:io';

import 'package:dojin_hub/app/data_model/app_colors.dart';
import 'package:dojin_hub/app/style_constants.dart';
import 'package:dojin_hub/di/app_provider.dart';
import 'package:dojin_hub/di/screen_model_provider.dart';
import 'package:dojin_hub/domain/entity/dojin_event.dart';
import 'package:dojin_hub/log/debug_log.dart';
import 'package:dojin_hub/ui/component/pie_chart/pie_chart.dart';
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
      body: DraggableScrollableSheet(
        initialChildSize: 0.6,
        minChildSize: 0.6,
        builder:
            (BuildContext context, ScrollController scrollController) {
          return PageView.builder(
            itemCount: 2,
            controller: pageController,
            itemBuilder: (BuildContext context, int index) {
              switch (index) {
                case 0:
                  return _buildDetailPage(
                      screenModel, appColors, scrollController);
                case 1:
                  return _buildHistoryPage(appColors, scrollController);
                default:
                  throw AssertionError();
              }
            },
          );
        },
      ),
    );
  }

  Widget _buildDetailPage(
    ProductDetailScreenModel screenModel,
    AppColors appColors,
    ScrollController scrollController,
  ) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Container(
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
            _buildSaleStateWindow(),
            _buildOutSourcingStateWindow(),
            _buildStockStateWindow(),
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryPage(
    AppColors appColors,
    ScrollController scrollController,
  ) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Container(
        decoration: BoxDecoration(
          color: appColors.primary,
          borderRadius: BorderRadius.only(
            topRight: const Radius.circular(30),
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Center(
          child: Text('history'),
        ),
      ),
    );
  }

  // SliverAppBar _buildSliverAppBar(
  //   BuildContext context,
  //   ProductDetailScreenModel screenModel,
  //   ProductDetailScreenModelController screenModelController,
  //   AppColors appColors,
  // ) {
  //   return SliverAppBar(
  //     backgroundColor: appColors.primary,
  //     shadowColor: appColors.primary,
  //     expandedHeight: 250,
  //     centerTitle: true,
  //     title: Text(
  //       screenModel.product.title,
  //       style: TextStyle(
  //         color: appColors.primaryText,
  //       ),
  //     ),
  //     flexibleSpace: FlexibleSpaceBar(
  //       collapseMode: CollapseMode.parallax,
  //       background: _buildCoverImageArea(
  //         context,
  //         screenModel,
  //         screenModelController,
  //         appColors,
  //       ),
  //     ),
  //     leading: Visibility(
  //       visible: Navigator.of(context).canPop(),
  //       child: IconButton(
  //         icon: Icon(
  //           Icons.arrow_back,
  //           color: appColors.primaryText,
  //         ),
  //         onPressed: () => Navigator.of(context).pop(),
  //       ),
  //     ),
  //     actions: [
  //       IconButton(
  //           icon: Icon(
  //             screenModel.isEditing ? Icons.lock_open : Icons.lock,
  //             color: appColors.primaryText,
  //           ),
  //           onPressed: () => screenModelController.togleIsEditing()),
  //     ],
  //   );
  // }

  Widget _buildEditionsArea(
    ProductDetailScreenModel screenModel,
    AppColors appColors,
  ) {
    return Container(
      color: appColors.primary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 8,
            ),
            alignment: Alignment.topLeft,
            child: Text(
              '版',
              style: TextStyle(
                fontSize: AppFontSize.body,
                fontWeight: AppFontWeight.body,
                color: appColors.primaryText,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 4,
            ),
            alignment: Alignment.topLeft,
            child: Wrap(
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
              ).toList(),
            ),
          ),
        ],
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

    return Row(
      children: [
        Expanded(
          child: buildCoverImage(screenModel.product.coverImagePath),
        ),
        Expanded(
          child: buildCoverImage(screenModel.product.coverImagePath),
        ),
      ],
    );
  }

  Widget _buildSaleStateWindow() {
    return Card(
      child: PieChartSample3(),
    );
  }

  Widget _buildOutSourcingStateWindow() {
    return Card(
      child: PieChartSample3(),
    );
  }

  Widget _buildStockStateWindow() {
    return Card(
      child: PieChartSample3(),
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
