import 'package:dojin_hub/app/data_model/app_colors.dart';
import 'package:dojin_hub/app/style_constants.dart';
import 'package:dojin_hub/di/app_provider.dart';
import 'package:dojin_hub/ui/component/button/component_type.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CommonAppBar extends ComponentType implements PreferredSizeWidget {
  final String? title;
  final Widget? actionButton;

  CommonAppBar({
    this.title,
    this.actionButton,
  });

  Widget? createTitle(AppColors appColors) {
    return title != null
        ? Text(
            title!,
            style: TextStyle(
              color: appColors.primaryText,
              fontSize: AppFontSize.title,
              fontWeight: AppFontWeight.title,
            ),
          )
        : null;
  }

  @override
  Widget build(BuildContext context) {
    var appColors = useProvider(appColorsProvider).state;

    return Container(
      color: appColors.primary,
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Visibility(
              visible: Navigator.of(context).canPop(),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: appColors.primaryText,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: createTitle(appColors),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Visibility(
              visible: actionButton != null,
              child: actionButton ?? Center(),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 56);
}
