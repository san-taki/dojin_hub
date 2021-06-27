import 'package:dojin_hub/domain/entity/pie_chart_item.dart';
import 'package:dojin_hub/log/debug_log.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AppPieChart extends HookWidget {
  final List<PieChartItem> items;
  static final colors = [
    Color(0xffeb4d4b),
    Color(0xfff0932b),
    Color(0xfff9ca24),
    Color(0xff7ed6df),
    Color(0xffe056fd),
    Color(0xff686de0),
    Color(0xff30336b),
    Color(0xff22a6b3),
  ];

  AppPieChart(this.items);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.4,
      child: PieChart(
        PieChartData(
          pieTouchData: PieTouchData(
            touchCallback: (pieTouchResponse) {
              DebugLog.d('onPieTouchData');
            },
          ),
          sectionsSpace: 1,
          centerSpaceRadius: 0,
          sections: showingSections(),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(
      items.length,
      (i) {
        var item = items[i];
        var fontSize = 16.0;
        var radius = 100.0;

        return PieChartSectionData(
          color: colors[i],
          value: item.value,
          title: item.label,
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: const Color(0xffffffff),
          ),
        );
      },
    );
  }
}
