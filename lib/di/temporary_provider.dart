import 'package:dojin_hub/domain/entity/pie_chart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// FIXME: これ微妙。Navigatorの引数を渡す最も自然なやり方はなんだろう

final productDetailScreenCurrentPositionProvider = StateProvider((ref) => 0);

final pageControllerProvider = Provider((ref) => PageController());

final pieChartSaleItemProvider = StateProvider<List<PieChartItem>>((ref) => []);