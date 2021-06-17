import 'package:dojin_hub/router/router.dart' as router;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DojinHub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: router.RouteName.splash,
      onGenerateRoute: router.Router.onGenerateRoute,
    );
  }
}
