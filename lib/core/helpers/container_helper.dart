import 'package:cv_mood_tracker/core/helpers/color_helper.dart';
import 'package:cv_mood_tracker/core/helpers/space_helper.dart';
import 'package:cv_mood_tracker/presentation/components/mood_app_bar.dart';
import 'package:cv_mood_tracker/presentation/components/mood_app_builder.dart';
import 'package:cv_mood_tracker/presentation/components/mood_bottom_navigation_bar.dart';
import 'package:cv_mood_tracker/presentation/components/mood_floating_action_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContainerHelper {
  static Widget mainScaffold({required Widget child}) {
    return SafeArea(
      child: Scaffold(
        appBar: Get.find<MoodAppBuilderController>().currentIndex == 0
            ? MoodAppBar.homeAppbar(user: "John Doe")
                : MoodAppBar.normalAppbar(user: "John Doe"),
        bottomNavigationBar: const MoodBottomNavigationBar(),
        floatingActionButton: const MoodFloatingActionButton(),
        floatingActionButtonLocation: MoodFloatingActionButton.location,
        body: Container(
      padding: const EdgeInsets.all(SpaceHelper.space8),
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: child,
              ),
            ))
    );
  }

  static Container chipContainer({required Widget child, Color? color}) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: SpaceHelper.space8, vertical: SpaceHelper.space4),
      decoration: BoxDecoration(
        color: color ?? ColorHelper.backgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      child: child,
    );
  }

  static BoxDecoration decoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: ColorHelper.cardColor,
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 5,
        offset: const Offset(0, 3),
      ),
    ],
  );
}