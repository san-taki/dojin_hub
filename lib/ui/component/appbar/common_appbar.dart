import 'package:dojin_hub/di/component_model_provider.dart';
import 'package:dojin_hub/ui/component/button/component_type.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CommonAppBar extends ComponentType implements PreferredSizeWidget {
  final bool showLockMenu;

  CommonAppBar({
    this.showLockMenu = false,
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
      bottom: PreferredSize(
        child: Container(
          color: Colors.grey,
          height: 1,
        ),
        preferredSize: Size.fromHeight(1),
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
      actions: <Widget>[
        Visibility(
          visible: showLockMenu,
          child: IconButton(
            icon: model.isEditing
                ? Icon(
                    Icons.lock_open,
                    color: Colors.red,
                  )
                : Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
            onPressed: () => modelController.togleEditingState(),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 56);
}
