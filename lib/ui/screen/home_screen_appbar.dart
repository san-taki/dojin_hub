import 'package:dojin_hub/ui/component/appbar/common_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreenAppBar extends CommonAppBar {
  HomeScreenAppBar()
      : super(
          title: Text(
            'DojinHub',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actionButton: IconButton(
              icon: Icon(
                Icons.lock_open,
                color: Colors.white,
              ),
              onPressed: () {}),
        );
}
