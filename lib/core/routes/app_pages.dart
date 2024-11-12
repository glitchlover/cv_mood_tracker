import 'package:cv_mood_tracker/core/routes/app_urls.dart';
import 'package:cv_mood_tracker/presentation/screens/chart/chart_screen.dart';
import 'package:cv_mood_tracker/presentation/screens/history/history_screen.dart';
import 'package:cv_mood_tracker/presentation/screens/home/home_screen.dart';
import 'package:cv_mood_tracker/presentation/screens/mood/mood_screen.dart';
import 'package:cv_mood_tracker/presentation/screens/news/news_screen.dart';
import 'package:cv_mood_tracker/presentation/screens/settings/settings_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages{
  static final routes = [
    GetPage(
      name: AppUrls.home,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: AppUrls.mood,
      page: () => const MoodScreen(),
    ),
    GetPage(
      name: AppUrls.news,
      page: () => const NewsScreen()
    ),
    GetPage(
      name: AppUrls.history,
      page: () => const HistoryScreen()
    ),
    GetPage(
      name: AppUrls.chart,
      page: () => const ChartScreen()
    ),
    GetPage(
      name: AppUrls.settings,
      page: () => const SettingsScreen()
    ),
  ];
}