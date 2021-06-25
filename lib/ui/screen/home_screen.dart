import 'package:dojin_hub/app/data_model/app_colors.dart';
import 'package:dojin_hub/app/style_constants.dart';
import 'package:dojin_hub/di/app_provider.dart';
import 'package:dojin_hub/di/screen_model_provider.dart';
import 'package:dojin_hub/log/debug_log.dart';
import 'package:dojin_hub/router/router.dart';
import 'package:dojin_hub/ui/component/button/primary_button.dart';
import 'package:dojin_hub/ui/screen/screen_type.dart';
import 'package:dojin_hub/ui/screen_model/home_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookWidget implements ScreenType {
  @override
  Widget build(BuildContext context) {
    var screenModel = useProvider(homeScreenModelProvider);
    var appColors = useProvider(appColorsProvider).state;

    return Scaffold(
      body: Stack(
        children: [
          Flex(
            direction: Axis.vertical,
            children: [
              Flexible(
                flex: 5,
                child: Container(
                  color: appColors.primary,
                ),
              ),
              Flexible(
                flex: 5,
                child: Container(
                  color: appColors.primary,
                  alignment: Alignment.topRight,
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildBookStorageMenu(context),
                        _buildPosRegisterMenu(context),
                        _buildSettingsMenu(context),
                        _buildPaidButton(context),
                        _buildVersion(screenModel, appColors),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 56,
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: Stack(
              children: [
                Center(
                  child: Text(
                    'Dojinhub',
                    style: TextStyle(
                      color: appColors.primaryText,
                      fontSize: AppFontSize.title,
                      fontWeight: AppFontWeight.title,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: Icon(
                      Icons.splitscreen,
                      color: Colors.white,
                    ),
                    onPressed: () => DebugLog.d('hogehoge'),
                  ),
                ),
              ],
            ),
          ),
        ],
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
        '即売会レジ',
        'assets/images/regi.png',
        RouteName.pos_register,
      );

  Widget _buildSettingsMenu(BuildContext context) => _buildMenu(
        context,
        'データ引き継ぎ',
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
        child: Padding(
          padding: const EdgeInsets.only(
            left: 50,
            bottom: 4,
          ),
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(0),
              ),
            ),
            child: Container(
              height: 60,
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
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          alignment: Alignment.centerLeft,
                          child: Text(label),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  Widget _buildPaidButton(BuildContext context) => Container(
        padding: EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width / 2,
        child: PrimaryButton(
          label: '広告を消す',
          onPressed: () {
            DebugLog.d('move to 購入画面');
          },
        ),
      );

  Widget _buildVersion(
    HomeScreenModel screenModel,
    AppColors appColors,
  ) =>
      Container(
        child: Text(
          'version : ${screenModel.version}',
          style: TextStyle(
            color: appColors.primaryText,
          ),
        ),
      );
}
