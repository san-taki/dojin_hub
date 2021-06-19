import 'package:freezed_annotation/freezed_annotation.dart';

part 'example.freezed.dart';

// 状態とふるまいを持つオブジェクト＝ドメインモデル
// freezed data classに状態を書く
@freezed
class Example with _$Example {
  // PrivteConstructorを定義するとメンバーmethodの定義ができる
  const Example._();
  const factory Example() = _Example;

  // Dartの原則として引数を取らない関数はgetterで書く
  bool get hoge => true;
}