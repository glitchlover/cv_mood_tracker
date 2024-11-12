
import 'package:cv_mood_tracker/presentation/components/mood_app_builder.dart';
import 'package:cv_mood_tracker/presentation/screens/home/home_controller.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(MoodAppBuilderController());
    Get.lazyPut(() => HomeController());
  }
}
