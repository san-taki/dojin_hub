import 'dart:io';

import 'package:dojin_hub/provider/screen_model_provider.dart';
import 'package:dojin_hub/provider/temporary_provider.dart';
import 'package:dojin_hub/router/router.dart';
import 'package:dojin_hub/ui/component/appbar/common_appbar.dart';
import 'package:dojin_hub/ui/screen/create_product_screen.dart';
import 'package:dojin_hub/ui/screen/screen_type.dart';
import 'package:dojin_hub/ui/screen_model/product_storage_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class ProductStorageScreen extends HookWidget implements ScreenType {
  @override
  Widget build(BuildContext context) {
    var screenModel = useProvider(productStorageScreenModelProvider);
    var detailScreenPosition =
        useProvider(productDetailScreenCurrentPositionProvider);

    return Scaffold(
      appBar: CommonAppBar(
        title: runtimeType.toString(),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 8,
        ),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: screenModel.productStorage.products
            .map(
              (product) => Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: InkWell(
                  onTap: () {
                    detailScreenPosition.state =
                        screenModel.productStorage.products.indexOf(product);
                    Navigator.of(context).pushNamed(RouteName.product_detail);
                  },
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            alignment: FractionalOffset.center,
                            image: Image.file(
                              File(product.thumbnailPath),
                              fit: BoxFit.cover,
                            ).image,
                          ),
                        ),
                      ),
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
                        visible: product.soldOut,
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
              ),
            )
            .toList()
              ..add(
                Card(
                  color: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    onTap: () =>
                        _showAddProductBottomSheet(context, screenModel),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text(
                          '作品を追加する',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }

  Future<void> _showAddProductBottomSheet(
    BuildContext context,
    ProductStorageScreenModel screenModel,
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

  // 日時登録
  Future<void> _selectDate(BuildContext context) async {
    await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015),
      lastDate: DateTime(2020),
    ).then((value) {
      if (value != null) {
        var date = DateFormat.yMMMd().format(value);
      }
    });
  }
}
