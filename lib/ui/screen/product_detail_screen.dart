import 'package:dojin_hub/provider/screen_model_provider.dart';
import 'package:dojin_hub/ui/component/appbar/common_appbar.dart';
import 'package:dojin_hub/ui/screen/screen_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductDetailScreen extends HookWidget implements ScreenType {
  @override
  Widget build(BuildContext context) {
    var screenModel = useProvider(productDetailScreenModelProvider);
    var pageController = PageController();

    return Scaffold(
      appBar: CommonAppBar(title: runtimeType.toString()),
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: pageController,
        physics: AlwaysScrollableScrollPhysics(),
        itemCount: screenModel.products.length,
        itemBuilder: (BuildContext context, int index) {
          var product = screenModel.products[index];
          return Center(
            child: Text(product.title),
          );
        },
      ),
    );
  }
}
