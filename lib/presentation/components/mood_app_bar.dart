import 'package:cv_mood_tracker/core/helpers/asset_helper.dart';
import 'package:cv_mood_tracker/core/helpers/color_helper.dart';
import 'package:cv_mood_tracker/core/helpers/container_helper.dart';
import 'package:cv_mood_tracker/core/helpers/method_helper.dart';
import 'package:cv_mood_tracker/core/helpers/space_helper.dart';
import 'package:cv_mood_tracker/core/helpers/style_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MoodAppBar {
  static AppBar homeAppbar({required String user}) {
    return AppBar(
      title: RichText(
        text: TextSpan(children: [
          const TextSpan(text: 'Hi, ', style: StyleHelper.titleStyleBold),
          TextSpan(
              text: user,
              style: StyleHelper.titleStyleBold
                  .copyWith(color: ColorHelper.primaryColor)),
        ]),
      ),
      actions: [
        // Streak widget
        ContainerHelper.chipContainer(
            child: Row(
          children: [
            Image.asset(
              AssetHelper.streak,
              height: 18,
            ),
            const Text("10", style: StyleHelper.textStyleMediumBold)
          ],
        )),
        const Padding(padding: SpaceHelper.padding5),
        // Todoy's Date widget
        ContainerHelper.chipContainer(
            child: Row(
          children: [
            Image.asset(
              AssetHelper.calendar,
              height: 18,
            ),
            const Padding(padding: SpaceHelper.padding2),
            Text(MethodHelper.dateToday(),
                style: StyleHelper.textStyleMediumSemiBold)
          ],
        )),
        const Padding(padding: SpaceHelper.padding10)
      ],
    );
  }

  static normalAppbar({required String user}) {
    return AppBar(
      title: RichText(
        text: TextSpan(children: [
          const TextSpan(text: 'Hi, ', style: StyleHelper.titleStyleBold),
          TextSpan(
              text: user,
              style: StyleHelper.titleStyleBold
                  .copyWith(color: ColorHelper.primaryColor)),
        ]),
      ),
    );
  }

  static AppBar plainAppbar() {
    return AppBar(
      leading: GestureDetector(
        onTap: () => Get.back(),
        child: const Icon(Iconsax.arrow_left)),
    );
  }

}
