import 'package:dojin_hub/flamework/model_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_theme.freezed.dart';

// アプリのテーマ
// ここはWip
@freezed
class MyTheme extends ModelType with _$MyTheme {
  const factory MyTheme.dark() = _DarkTheme;
  const factory MyTheme.light() = _LightTheme;
}