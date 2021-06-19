import 'dart:io';

import 'package:dojin_hub/domain/entity/product.dart';
import 'package:dojin_hub/provider/screen_model_provider.dart';
import 'package:dojin_hub/provider/temporary_provider.dart';
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

    return Scaffold(
      appBar: CommonAppBar(),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 8,
        ),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: screenModel.products
            .map(
              (product) => Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: InkWell(
                  onTap: () {
                    detailScreenPosition.state =
                        screenModel.products.indexOf(product);
                    Navigator.of(context).pushNamed(RouteName.product_detail);
                  },
                  child: Stack(
                    children: [
                      Container(
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
