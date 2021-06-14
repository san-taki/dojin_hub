import 'package:dojin_hub/ui/component/button/component_type.dart';
import 'package:flutter/material.dart';

class CommonAppBar extends ComponentType implements PreferredSizeWidget {
  final String title;
  final bool showHelp;

  CommonAppBar({
    required this.title,
    this.showHelp = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 56);
}
