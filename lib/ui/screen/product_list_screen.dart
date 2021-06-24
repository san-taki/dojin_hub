import 'dart:io';

import 'package:dojin_hub/app/data_model/app_colors.dart';
import 'package:dojin_hub/di/app_provider.dart';
import 'package:dojin_hub/di/screen_model_provider.dart';
import 'package:dojin_hub/di/temporary_provider.dart';
import 'package:dojin_hub/domain/entity/product.dart';
import 'package:dojin_hub/router/router.dart';
import 'package:dojin_hub/ui/component/appbar/common_appbar.dart';
import 'package:dojin_hub/ui/screen/create_product_screen.dart';
import 'package:dojin_hub/ui/screen/screen_type.dart';
import 'package:dojin_hub/ui/screen_model/product_list_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductListScreen extends HookWidget implements ScreenType {
  @override
  Widget build(BuildContext context) {
    var screenModel = useProvider(productListScreenModelProvider);
    var detailScreenPosition =
        useProvider(productDetailScreenCurrentPositionProvider);
    var appColors = useProvider(appColorsProvider).state;

    return Scaffold(
      backgroundColor: appColors.primary,
      appBar: CommonAppBar(
        title: '本の管理',
      ),
      body: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: screenModel.products.length,
        itemBuilder: (BuildContext context, int index) =>
            _buildProductListTile(
          context,
          screenModel,
          detailScreenPosition,
          screenModel.products[index],
          appColors,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: _buildFloatingActionButton(
        context,
        screenModel,
        appColors,
      ),
    );
  }

  Widget _buildProductListTile(
    BuildContext context,
    ProductListScreenModel screenModel,
    detailScreenPosition,
    Product product,
    AppColors appColors,
  ) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: () {
            detailScreenPosition.state = screenModel.products.indexOf(product);
            Navigator.of(context).pushNamed(RouteName.product_detail);
          },
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      alignment: FractionalOffset.center,
                      image: product.coverImagePath.isNotEmpty
                          ? Image.file(
                              File(product.coverImagePath),
                              fit: BoxFit.cover,
                            ).image
                          : Image.asset(
                              'assets/images/noimage.png',
                              fit: BoxFit.cover,
                            ).image,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        product.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: product.soldOut(),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        alignment: Alignment.bottomRight,
                        child: Image.asset(
                          'assets/images/kanbai.png',
                          height: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFloatingActionButton(
    BuildContext context,
    ProductListScreenModel screenModel,
    AppColors appColors,
  ) {
    return FloatingActionButton(
      backgroundColor: appColors.primaryText,
      onPressed: () => _showAddProductBottomSheet(context, screenModel),
      child: Icon(
        Icons.add,
        color: appColors.primary,
      ),
    );
  }

  Future<void> _showAddProductBottomSheet(
    BuildContext context,
    ProductListScreenModel screenModel,
  ) async {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        backgroundColor: Colors.white,
        builder: (BuildContext context) => CreateProductScreen());
  }
}
