import 'package:dojin_hub/provider/screen_model_provider.dart';
import 'package:dojin_hub/router/router.dart';
import 'package:dojin_hub/ui/component/appbar/common_appbar.dart';
import 'package:dojin_hub/ui/screen/screen_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashScreen extends HookWidget implements ScreenType {
  @override
  Widget build(BuildContext context) {
    final model = useProvider(splashScreenModelProvider);
    useMemoized(() => model.initialize(), []);

    Future.delayed(Duration(milliseconds: 500)).then(
      (_) => Navigator.of(context)
          .pushReplacementNamed(RouteName.home),
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
