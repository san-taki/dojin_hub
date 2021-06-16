import 'package:dojin_hub/ui/component/appbar/common_appbar.dart';
import 'package:dojin_hub/ui/screen/screen_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EditEditionScreen extends HookWidget implements ScreenType {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: runtimeType.toString()),
      body: Center(
        child: Text(
          runtimeType.toString(),
        ),
      ),
    );
  }
}
