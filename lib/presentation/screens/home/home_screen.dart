import 'package:cv_mood_tracker/core/helpers/container_helper.dart';
import 'package:cv_mood_tracker/presentation/components/mood_tracker_calendar.dart';

import 'package:cv_mood_tracker/presentation/screens/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerHelper.mainScaffold(child: Column(
      children: [
        const MoodTrackerCalendar(),
        _buildBottomSection(),
      ],
    ));
  }

  Widget _buildBottomSection() {
    return Container();
  }
}
