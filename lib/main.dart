import 'package:dojin_hub/di/repository_provider.dart';
import 'package:dojin_hub/flavor.dart';
import 'package:dojin_hub/infrastructure/repository/product_repository_mock.dart';
import 'package:dojin_hub/log/debug_log.dart';
import 'package:dojin_hub/my_app.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // 縦固定
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  final flavor = EnumToString.fromString(
        Flavor.values,
        const String.fromEnvironment('FLAVOR'),
      ) ??
      Flavor.Development;
  DebugLog.initialize(flavor);

  runApp(
    ProviderScope(
      overrides: [
        productRepositoryProvider.overrideWithValue(ProductRepositoryMock()),
      ],
      child: MyApp(),
    ),
  );
}
