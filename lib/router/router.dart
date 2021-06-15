import 'dart:io';

import 'package:dojin_hub/ui/screen/product_detail_screen.dart';
import 'package:dojin_hub/ui/screen/product_storage_screen.dart';
import 'package:dojin_hub/ui/screen/home_screen.dart';
import 'package:dojin_hub/ui/screen/pos_register_screen.dart';
import 'package:dojin_hub/ui/screen/screen_type.dart';
import 'package:dojin_hub/ui/screen/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteName {
  static const product_storage = '/product_storage';
  static const product_detail = '/product_detail';
  static const home = '/home';
  static const pos_register = '/pos_register';
  static const settings = '/settings';
}

class Router {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.product_storage:
        return _generateRouteByModal(ProductStorageScreen());
      case RouteName.product_detail:
        return _generateRouteByModal(ProductDetailScreen());
      case RouteName.home:
        return _generateRoute(HomeScreen());
      case RouteName.pos_register:
        return _generateRouteByModal(PosRegisterScreen());
      case RouteName.settings:
        return _generateRouteByModal(SettingsScreen());
      default:
        // FIXME: AppErrorに統合する
        return null;
    }
  }

  static Route<dynamic> _generateRoute(ScreenType screen) {
    return StandardPageRoute<void>(
      builder: (_) => screen,
    );
  }

  static Route<dynamic> _generateRouteByModal(ScreenType screen) {
    return StandardPageRoute<void>(
        builder: (_) => screen, fullscreenDialog: true);
  }
}

class StandardPageRoute<T> extends CupertinoPageRoute<T> {
  StandardPageRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
          builder: builder,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
        );

  @override
  @protected
  bool get hasScopedWillPopCallback {
    return Platform.isIOS ? super.hasScopedWillPopCallback : true;
  }
}
