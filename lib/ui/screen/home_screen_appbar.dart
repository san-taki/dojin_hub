import 'package:dojin_hub/app/data_model/app_colors.dart';
import 'package:dojin_hub/app/style_constants.dart';
import 'package:dojin_hub/ui/component/appbar/common_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreenAppBar extends CommonAppBar {
  HomeScreenAppBar()
      : super(
          actionButton: IconButton(
              icon: Icon(
                Icons.lock_open,
                color: Colors.white,
              ),
              onPressed: () {}),
        );

  @override
  Widget? createTitle(AppColors appColors) {
    return Text(
      'Dojin Hub',
      style: TextStyle(
        color: appColors.primaryText,
        fontSize: AppFontSize.title,
        fontWeight: AppFontWeight.title,
      ),
    );
  }
}
