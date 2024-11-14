import 'package:get/get.dart';

// final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

// class MoodAppBuilder extends GetView<MoodAppBuilderController> {
//   final Widget child;
//   const MoodAppBuilder({super.key, required this.child});

//   @override
//   Widget build(BuildContext context) {
//     return Navigator(
//             key: _navigatorKey,
//             pages: [
//               const MaterialPage(
//                 key: ValueKey('SettingsScreen'),
//                 name: AppUrls.settings,
//                 child: SettingsScreen(),
//               ),
//               const MaterialPage(
//                 key: ValueKey('NewsScreen'),
//                 name: AppUrls.news,
//                 child: NewsScreen(),
//               ),
//               const MaterialPage(
//                 key: ValueKey('ChartScreen'),
//                 name: AppUrls.chart,
//                 child: ChartScreen(),
//               ),
//               MaterialPage(
//                 key: const ValueKey('HomeScreen'),
//                 name: AppUrls.home,
//                 child: child,
//               ),
//             ],
//             onPopPage: (route, result) => route.didPop(result),
//     );
//   }
// }

class MoodAppBuilderController extends GetxController {
  
  int currentIndex = 0;

  Future<void> onItemTapped(int index) async {
    currentIndex = index;

    // Navigate to the selected page with a fade transition
    // await Get.key.currentState!.pushReplacement(_createPageRoute(index));
  }

  
}
