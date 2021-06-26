import 'package:dojin_hub/domain/entity/product.dart';
import 'package:dojin_hub/flamework/model_controller_type.dart';
import 'package:dojin_hub/flamework/model_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_pie_chart_model.freezed.dart';

@freezed
class AppPieChartModel extends ModelType with _$AppPieChartModel {
  const factory AppPieChartModel({
    @Default(0) int touchedIndex,
    required Product product,
  }) = _AppPieChartModel;
}

class AppPieChartModelController extends ModelControllerType<AppPieChartModel> {
  AppPieChartModelController(AppPieChartModel model) : super(model);

  void updateIndex(int index) {
    state = state.copyWith(touchedIndex: index);
  }
}
