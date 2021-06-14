import 'package:dojin_hub/selection/dojin_event.dart';
import 'package:dojin_hub/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      overrides: [],
      child: MyApp(),
    ),
  );
}
