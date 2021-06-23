import 'package:dojin_hub/di/component_model_provider.dart';
import 'package:dojin_hub/ui/component/button/component_type.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CommonAppBar extends ComponentType implements PreferredSizeWidget {
  final Widget? title;
  final Widget? actionButton;

  CommonAppBar({
    this.title,
    this.actionButton,
  });

  @override
  Widget build(BuildContext context) {
    var model = useProvider(commonAppBarModelProvider);
    var modelController = useProvider(commonAppBarModelProvider.notifier);

    return AppBar(
      elevation: 0,
      leading: Visibility(
        visible: Navigator.of(context).canPop(),
        child: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      title: title,
      backgroundColor: Colors.blueGrey,
      centerTitle: true,
      actions: <Widget>[
        Visibility(
          visible: actionButton != null,
          child: actionButton ?? Center(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 56);
}
