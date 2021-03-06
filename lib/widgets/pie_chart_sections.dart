import 'package:fl_chart/fl_chart.dart';
import 'package:panda/data/pie_data.dart';

List<PieChartSectionData> getSections() => PieData.data
    .asMap()
    .map<int, PieChartSectionData>((index, data) {
      final value = PieChartSectionData(
        color: data.color,
        value: data.percent,
        radius: 20,
      );

      return MapEntry(index, value);
    })
    .values
    .toList();
