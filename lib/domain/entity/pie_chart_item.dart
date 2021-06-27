import 'package:freezed_annotation/freezed_annotation.dart';

part 'pie_chart_item.freezed.dart';

@freezed
class PieChartItem with _$PieChartItem {
  const factory PieChartItem({
    required String label,
    required double value,
  }) = _PieChartItem;
}