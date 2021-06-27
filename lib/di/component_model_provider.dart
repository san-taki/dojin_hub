import 'package:dojin_hub/di/temporary_provider.dart';
import 'package:dojin_hub/ui/component_model/app_pie_chart_model.dart';
import 'package:dojin_hub/ui/component_model/common_appbar_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final commonAppBarModelProvider = StateNotifierProvider.autoDispose<
    CommonAppBarModelController, CommonAppBarModel>(
  (ref) => CommonAppBarModelController(
    CommonAppBarModel(),
  ),
);

final pieChartModelProvider = StateNotifierProvider.autoDispose<
    AppPieChartModelController, AppPieChartModel>(
  (ref) => AppPieChartModelController(
    AppPieChartModel(
      items: ref.read(pieChartSaleItemProvider).state,
    ),
  ),
);
