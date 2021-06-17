import 'package:dojin_hub/ui/component/button/component_type.dart';
import 'package:flutter/material.dart';

class CommonAppBar extends ComponentType implements PreferredSizeWidget {
  final bool showHelp;

  CommonAppBar({
    this.showHelp = false,
  });

  @override
  Widget build(BuildContext context) {
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
          visible: showHelp,
          child: IconButton(
            icon: Icon(
              Icons.help,
              color: Colors.blueGrey,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 56);
}
