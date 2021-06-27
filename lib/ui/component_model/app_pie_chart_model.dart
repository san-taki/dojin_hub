import 'package:dojin_hub/domain/entity/pie_chart_item.dart';
import 'package:dojin_hub/flamework/model_controller_type.dart';
import 'package:dojin_hub/flamework/model_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_pie_chart_model.freezed.dart';

@freezed
class AppPieChartModel extends ModelType with _$AppPieChartModel {
  const factory AppPieChartModel({
    required List<PieChartItem> items,
  }) = _AppPieChartModel;
}

class AppPieChartModelController extends ModelControllerType<AppPieChartModel> {
  AppPieChartModelController(AppPieChartModel model) : super(model);

}