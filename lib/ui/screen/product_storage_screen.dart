import 'package:dojin_hub/entity/book.dart';
import 'package:dojin_hub/entity/edition.dart';
import 'package:dojin_hub/entity/print_shop.dart';
import 'package:dojin_hub/entity/product.dart';
import 'package:dojin_hub/log/debug_log.dart';
import 'package:dojin_hub/provider/screen_model_provider.dart';
import 'package:dojin_hub/selection/book_status.dart';
import 'package:dojin_hub/selection/currency.dart';
import 'package:dojin_hub/ui/component/appbar/common_appbar.dart';
import 'package:dojin_hub/ui/component/text_field/text_field.dart';
import 'package:dojin_hub/ui/listener/touch_listeners.dart';
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
    var screenModel = useProvider(bookStorageScreenModelProvider);

    return Scaffold(
      appBar: CommonAppBar(
        title: runtimeType.toString(),
      ),
      body: _buildProductList(context, screenModel),
    );
  }

  Widget _buildProductList(
    BuildContext context,
    ProductStorageScreenModel screenModel,
  ) {
    return GridView.count(
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
              child: InkWell(
                onTap: () => DebugLog.d('aaa'),
                child: Text('hoge'),
              ),
            ),
          )
          .toList()
            ..add(
              Card(
                child: InkWell(
                  onTap: () => _showAddProductBottomSheet(context, screenModel),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add),
                      Text('作品を追加する'),
                    ],
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
    var fullScreenListener = FullScreenListener();
    var textListener = TextFormListener(1);
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
      builder: (BuildContext context) => GestureDetector(
        onTap: () => fullScreenListener.requestFocus(context),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height: 56,
                width: double.infinity,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        iconSize: 24,
                        icon: Icon(
                          Icons.save_alt,
                          color: Colors.blue,
                        ),
                        onPressed: () {
                          screenModel.addProduct(createProductMock());
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        '新しい作品を登録する',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildImageWindow(context),
                    TextForm(
                      label: '作品名',
                      listener: textListener,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageWindow(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 150,
        width: 150,
        child: Container(
          color: Colors.blue,
        ),
      ),
    );
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

  Product createProductMock() => Product(
        editions: [
          Edition(
            number: 1,
            printShop: PrintShop(
              id: 1,
              name: '栄光',
            ),
            publicationDate: DateTime.now(),
            books: [
              Book(
                bookStatus: BookStatus.homeStock(),
                sellingPrice: 500,
                currency: Currency.jpy(),
              ),
            ],
          ),
        ],
      );
}
