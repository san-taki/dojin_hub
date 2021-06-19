import 'package:dojin_hub/flamework/model_controller_type.dart';
import 'package:dojin_hub/flamework/model_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_model.freezed.dart';

@freezed
class HomeScreenModel extends ModelType with _$HomeScreenModel{
  const factory HomeScreenModel() = _HomeScreenModel;
}

class HomeScreenModelController extends ModelControllerType<HomeScreenModel> {
  HomeScreenModelController(HomeScreenModel model) : super(model);
}