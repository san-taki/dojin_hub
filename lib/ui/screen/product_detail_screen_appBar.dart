import 'package:dojin_hub/app/data_model/app_colors.dart';
import 'package:dojin_hub/app/style_constants.dart';
import 'package:dojin_hub/ui/component/appbar/common_appbar.dart';
import 'package:flutter/material.dart';

class ProductDetailScreenAppBar extends CommonAppBar {
  final String title;
  final bool isEditing;
  final Function onClickLockIcon;

  ProductDetailScreenAppBar({
    required this.title,
    required this.isEditing,
    required this.onClickLockIcon,
  }) : super(
          actionButton: IconButton(
            icon: isEditing
                ? Icon(
                    Icons.lock_open,
                    color: Colors.white,
                  )
                : Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
            onPressed: () => onClickLockIcon(),
          ),
        );

  @override
  Widget? createTitle(AppColors appColors) {
    return Text(
      title,
      style: TextStyle(
        color: appColors.primaryText,
        fontSize: AppFontSize.body,
        fontWeight: AppFontWeight.body,
      ),
    );
  }
}
