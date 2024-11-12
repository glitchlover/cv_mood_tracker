import 'package:cv_mood_tracker/core/routes/app_urls.dart';
import 'package:cv_mood_tracker/presentation/screens/chart/chart_screen.dart';
import 'package:cv_mood_tracker/presentation/screens/home/home_screen.dart';
import 'package:cv_mood_tracker/presentation/screens/news/news_screen.dart';
import 'package:cv_mood_tracker/presentation/screens/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

class MoodAppBuilder extends GetView<MoodAppBuilderController> {
  final Widget child;
  const MoodAppBuilder({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Navigator(
            key: _navigatorKey,
            pages: [
              const MaterialPage(
                key: ValueKey('SettingsScreen'),
                name: AppUrls.settings,
                child: SettingsScreen(),
              ),
              const MaterialPage(
                key: ValueKey('NewsScreen'),
                name: AppUrls.news,
                child: NewsScreen(),
              ),
              const MaterialPage(
                key: ValueKey('ChartScreen'),
                name: AppUrls.chart,
                child: ChartScreen(),
              ),
              MaterialPage(
                key: const ValueKey('HomeScreen'),
                name: AppUrls.home,
                child: child,
              ),
            ],
            onPopPage: (route, result) => route.didPop(result),
    );
  }
}

class MoodAppBuilderController extends GetxController {
  
  int currentIndex = 0;

  Future<void> onItemTapped(int index) async {
    currentIndex = index;

    // Navigate to the selected page with a fade transition
    await _navigatorKey.currentState!.pushReplacement(_createPageRoute(index));
  }

  PageRouteBuilder _createPageRoute(int index) {
    Widget page;
    switch (index) {
      case 0:
        page = const HomeScreen();
        break;
      case 1:
        page = const ChartScreen();
        break;
      case 2:
        page = const NewsScreen();
        break;
      default:
        page = const SettingsScreen();
    }

    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: MoodAppBuilder(child: child));
      },
    );
  }
}
