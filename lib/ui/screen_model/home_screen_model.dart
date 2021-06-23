import 'package:dojin_hub/flamework/model_controller_type.dart';
import 'package:dojin_hub/flamework/model_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'home_screen_model.freezed.dart';

@freezed
class HomeScreenModel extends ModelType with _$HomeScreenModel {
  const factory HomeScreenModel({
    @Default('') String version,
  }) = _HomeScreenModel;
}

class HomeScreenModelController extends ModelControllerType<HomeScreenModel> {
  HomeScreenModelController(HomeScreenModel model) : super(model) {
    _initPackageInfo();
  }

// provider化する
  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    state = state.copyWith(
      version: info.version,
    );
  }
}
