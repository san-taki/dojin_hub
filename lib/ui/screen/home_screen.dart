import 'package:dojin_hub/router/router.dart';
import 'package:dojin_hub/ui/component/appbar/common_appbar.dart';
import 'package:dojin_hub/ui/screen/screen_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeScreen extends HookWidget implements ScreenType {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildBookStorageMenu(context),
            _buildPosRegisterMenu(context),
            _buildSettingsMenu(context),
          ],
        ),
      ),
    );
  }

  Widget _buildBookStorageMenu(BuildContext context) => _buildMenu(
        context,
        '本の管理',
        'assets/images/book.png',
        RouteName.product_storage,
      );

  Widget _buildPosRegisterMenu(BuildContext context) => _buildMenu(
        context,
        '即売会',
        'assets/images/regi.png',
        RouteName.pos_register,
      );

  Widget _buildSettingsMenu(BuildContext context) => _buildMenu(
        context,
        'アプリの設定',
        'assets/images/setting.png',
        RouteName.settings,
      );

  Widget _buildMenu(
    BuildContext context,
    String label,
    String imagePath,
    String routeName,
  ) =>
      GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(routeName),
        child: Card(
          child: Container(
            height: 80,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(label),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
