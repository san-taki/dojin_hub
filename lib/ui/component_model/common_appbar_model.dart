import 'package:dojin_hub/flamework/model_controller_type.dart';
import 'package:dojin_hub/flamework/model_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_appbar_model.freezed.dart';

@freezed
class CommonAppBarModel extends ModelType with _$CommonAppBarModel {
  const factory CommonAppBarModel({
    @Default(false) bool isEditing,
  }) = _CommonAppBarModel;
}

class CommonAppBarModelController
    extends ModelControllerType<CommonAppBarModel> {
  CommonAppBarModelController(CommonAppBarModel model) : super(model);

  void togleEditingState() {
    state = state.copyWith(isEditing: !state.isEditing);
  }
}
