import 'package:cv_mood_tracker/core/helpers/color_helper.dart';
import 'package:cv_mood_tracker/core/helpers/container_helper.dart';
import 'package:cv_mood_tracker/core/helpers/style_helper.dart';
import 'package:cv_mood_tracker/presentation/components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

// Sample data for the last 7 days (each integer represents a mood count per day)
final List<int> weeklyMoodData = [1, 3, 2, 4, 1, 2, 3];

// Sample data for mood distribution for the current month
final Map<String, double> monthlyMoodPercentage = {
  'Happy': 30,
  'Sad': 20,
  'Angry': 10,
  'Neutral': 25,
  'Relaxed': 15,
};

class ChartScreen extends StatelessWidget {
  const ChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerHelper.mainScaffold(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Mood for the Last 7 Days',
              style: StyleHelper.titleStyleBold,
            ),
            const SizedBox(height: 16),
            CommonComponents.itemCard(
              child: _buildBarChart(),
            ),
            const SizedBox(height: 32),
            const Text(
              'Mood Distribution for This Month',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            CommonComponents.itemCard(
              child: AspectRatio(
                aspectRatio: 1.2,
                child: PieChart(
                  PieChartData(
                    sections: _buildMonthlyMoodSections(),
                    centerSpaceRadius: 40,
                    sectionsSpace: 4,
                    borderData: FlBorderData(show: false),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AspectRatio _buildBarChart() {
    return AspectRatio(
              aspectRatio: 1.5,
              child: BarChart(
                BarChartData(
                  barGroups: _buildWeeklyBarGroups(),
                  titlesData: FlTitlesData(
                    leftTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          const days = [
                            'Mon',
                            'Tue',
                            'Wed',
                            'Thu',
                            'Fri',
                            'Sat',
                            'Sun'
                          ];
                          return Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              days[value.toInt() % days.length],
                              style: const TextStyle(fontSize: 12),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  gridData: const FlGridData(show: false),
                  borderData: FlBorderData(show: false),
                  barTouchData: BarTouchData(enabled: false),
                ),
              ),
            );
  }

  // Builds the bar groups for each day
  List<BarChartGroupData> _buildWeeklyBarGroups() {
    return List.generate(weeklyMoodData.length, (index) {
      return BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: weeklyMoodData[index].toDouble(),
            color: Colors.blueAccent,
            width: 18,
            borderRadius: BorderRadius.circular(4),
          ),
        ],
      );
    });
  }

  // Builds pie chart sections for monthly mood distribution
  List<PieChartSectionData> _buildMonthlyMoodSections() {
    final colors = [
      ColorHelper.blueColor,
      ColorHelper.greenColor,
      ColorHelper.yellowColor,
      ColorHelper.orangeColor,
      ColorHelper.redColor,
    ];
    int colorIndex = 0;

    return monthlyMoodPercentage.entries.map((entry) {
      final section = PieChartSectionData(
        color: colors[colorIndex % colors.length],
        value: entry.value,
        title: '${entry.value}%',
        titleStyle: const TextStyle(
            fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
        radius: 50,
      );
      colorIndex++;
      return section;
    }).toList();
  }
}
