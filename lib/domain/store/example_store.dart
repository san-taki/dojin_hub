import 'package:dojin_hub/flamework/model_controller_type.dart';
import 'package:dojin_hub/flamework/model_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_store.freezed.dart';

// StoreはRoot Entity（集約）
// StateNotifierがDomainEventを表すメソッド
@freezed
class ExampleStore extends ModelType with _$ExampleStore {
  const factory ExampleStore() = _ExampleStore;
}

// Storeの状態を変更するメソッド群、Vue.jsのStore Action的なもの
// メソッドの戻り値はvoid(例外は無い)
class ExampleStoreController extends ModelControllerType<ExampleStore> {
  ExampleStoreController(ExampleStore model) : super(model);
}