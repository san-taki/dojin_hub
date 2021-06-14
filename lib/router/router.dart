import 'dart:io';

import 'package:dojin_hub/ui/home_screen.dart';
import 'package:dojin_hub/ui/pos_register_screen.dart';
import 'package:dojin_hub/ui/screen_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteName {
  static const home = '/home';
  static const pos_register = '/pos_register';
  static const settings = '/settings';
}

class Router {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.home:
        return _generateRoute(HomeScreen());
      case RouteName.pos_register:
        return _generateRoute(PosRegisterScreen());
      case RouteName.settings:
        return _generateRouteByModal(HomeScreen());
      default:
        // FIXME: AppErrorに統合する
        throw AssertionError();
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
            fullscreenDialog: fullscreenDialog);

  @override
  @protected
  bool get hasScopedWillPopCallback {
    return Platform.isIOS ? super.hasScopedWillPopCallback : true;
  }
}
