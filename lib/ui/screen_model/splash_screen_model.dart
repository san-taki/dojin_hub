import 'package:dojin_hub/flamework/model_controller_type.dart';
import 'package:dojin_hub/flamework/model_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_screen_model.freezed.dart';

@freezed
class SplashScreenModel extends ModelType with _$SplashScreenModel {
  const factory SplashScreenModel() = _SplashScreenModel;
}

class SplashScreenModelController
    extends ModelControllerType<SplashScreenModel> {
  SplashScreenModelController(SplashScreenModel model) : super(model);
}
