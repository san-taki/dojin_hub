import 'package:freezed_annotation/freezed_annotation.dart';

part 'example.freezed.dart';

// 状態とふるまいを持つオブジェクト＝ドメインモデル
// freezed data classに状態を書く
@freezed
class Example with _$Example{
  const factory Example() = _Example;
}

// そのextentionに振る舞いを書く
// 引数を取らない関数はgetterで書く
extension ExampleExt on Example {
  bool get hoge => true;
}
