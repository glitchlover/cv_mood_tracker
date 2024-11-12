import 'package:cv_mood_tracker/core/routes/app_urls.dart';
import 'package:cv_mood_tracker/presentation/components/common_components.dart';
import 'package:cv_mood_tracker/presentation/components/mood_app_builder.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MoodBottomNavigationBar extends StatelessWidget {
  const MoodBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Future<void> onItemTapped(int index) async {
      Get.find<MoodAppBuilderController>().onItemTapped(index);
    }
    return BottomAppBar(
        notchMargin: 5.0,
        shape: const CircularNotchedRectangle(),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: CommonComponents.bottomBarIconButton(
                  label: 'Home',
                  isSelected: true,
                  icon: Iconsax.home5,
                  onPressed: () async{
                    await onItemTapped(0);
                    Get.offAllNamed(AppUrls.home);
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(right: 20.0, top: 10.0, bottom: 10.0),
                child: CommonComponents.bottomBarIconButton(
                  label: "Chart",
                  isSelected: false,
                  icon: Iconsax.chart5,
                  onPressed: () async{
                    await onItemTapped(1);
                    Get.offAllNamed(AppUrls.chart);
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
                child: CommonComponents.bottomBarIconButton(
                  label: "News",
                  isSelected: false,
                  icon: Iconsax.document5,
                  onPressed: () async{
                    await onItemTapped(2);
                    Get.offAllNamed(AppUrls.news);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: CommonComponents.bottomBarIconButton(
                  label: "Settings",
                  isSelected: false,
                  icon: Iconsax.setting5,
                  onPressed: () async{
                    await onItemTapped(3);
                    Get.offAllNamed(AppUrls.settings);
                  },
                ),
              ),
            ]));
  }
}
