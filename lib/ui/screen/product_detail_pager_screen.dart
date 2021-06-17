import 'package:dojin_hub/provider/screen_model_provider.dart';
import 'package:dojin_hub/provider/temporary_provider.dart';
import 'package:dojin_hub/ui/component/appbar/common_appbar.dart';
import 'package:dojin_hub/ui/screen/product_detail_screen.dart';
import 'package:dojin_hub/ui/screen/screen_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductDetailPagerScreen extends HookWidget implements ScreenType {
  @override
  Widget build(BuildContext context) {
    var screenModel = useProvider(productDetailPagerScreenModelProvider);
    var productDetailScreenCurrentPosition =
        useProvider(productDetailScreenCurrentPositionProvider);

    return Scaffold(
      appBar: CommonAppBar(),
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: screenModel.pageController,
        physics: AlwaysScrollableScrollPhysics(),
        itemCount: screenModel.products.length,
        onPageChanged: (position) {
          productDetailScreenCurrentPosition.state = position;
        },
        itemBuilder: (BuildContext context, int index) =>
            ProductDetailScreen(screenModel.products[index]),
      ),
    );
  }
}
