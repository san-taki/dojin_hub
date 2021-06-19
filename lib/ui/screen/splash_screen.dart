import 'package:dojin_hub/router/router.dart';
import 'package:dojin_hub/ui/component/appbar/common_appbar.dart';
import 'package:dojin_hub/ui/screen/screen_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SplashScreen extends HookWidget implements ScreenType {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 500)).then(
      (_) => Navigator.of(context).pushReplacementNamed(RouteName.home),
    );

    return Scaffold(
      appBar: CommonAppBar(),
      body: Center(
        child: Text(
          runtimeType.toString(),
        ),
      ),
    );
  }
}
