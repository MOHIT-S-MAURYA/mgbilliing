import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../constants/app_colors.dart';

class StockReport extends StatelessWidget {
  const StockReport({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      _StockData('Jan', 8000, 3000),
      _StockData('Feb', 10000, 5000),
      _StockData('Mar', 7000, 4000),
      _StockData('Apr', 11000, 6000),
      _StockData('May', 9000, 4500),
      _StockData('Jun', 12000, 7000),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          'Stock Report',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 300,
          child: BarChart(
            BarChartData(
              alignment: BarChartAlignment.spaceAround,
              barTouchData: BarTouchData(enabled: true),
              titlesData: FlTitlesData(
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: true),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (value, meta) {
                      int index = value.toInt();
                      if (index >= 0 && index < data.length) {
                        return Text(data[index].month);
                      }
                      return const SizedBox();
                    },
                    reservedSize: 30,
                  ),
                ),
              ),
              gridData: FlGridData(show: true),
              borderData: FlBorderData(show: false),
              barGroups:
                  data.asMap().entries.map((entry) {
                    int index = entry.key;
                    _StockData d = entry.value;
                    return BarChartGroupData(
                      x: index,
                      barRods: [
                        BarChartRodData(
                          toY: d.stockIn.toDouble(),
                          color: AppColors.lightBlue,
                          width: 12,
                          borderRadius: BorderRadius.zero,
                          rodStackItems: [
                            BarChartRodStackItem(
                              0,
                              d.stockIn.toDouble(),
                              AppColors.lightBlue,
                            ),
                            BarChartRodStackItem(
                              d.stockIn.toDouble(),
                              d.stockIn.toDouble() + d.stockOut.toDouble(),
                              AppColors.purple,
                            ),
                          ],
                        ),
                      ],
                    );
                  }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class _StockData {
  final String month;
  final int stockIn;
  final int stockOut;

  _StockData(this.month, this.stockIn, this.stockOut);
}
