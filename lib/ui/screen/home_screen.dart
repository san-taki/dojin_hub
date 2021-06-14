import 'package:dojin_hub/provider/screen_model_provider.dart';
import 'package:dojin_hub/ui/component/appbar/common_appbar.dart';
import 'package:dojin_hub/ui/screen/screen_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookWidget implements ScreenType {
  @override
  Widget build(BuildContext context) {
    var screenModel = useProvider(homeScreenModelProvider);

    return Scaffold(
      appBar: CommonAppBar(
        title: runtimeType.toString(),
      ),
      body: Center(
        child: Text('home'),
      ),
    );
  }
}
