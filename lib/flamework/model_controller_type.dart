import 'package:dojin_hub/flamework/model_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class ModelControllerType<M extends ModelType> extends StateNotifier<M> {
  ModelControllerType(M model) : super(model);
}
