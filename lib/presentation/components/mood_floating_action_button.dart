import 'package:cv_mood_tracker/core/helpers/color_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MoodFloatingActionButton extends StatelessWidget {
  static const FloatingActionButtonLocation location =
      FloatingActionButtonLocation.centerDocked;
  const MoodFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      direction: SpeedDialDirection.up,
      spacing: 30,
      spaceBetweenChildren: 2,
      overlayColor: ColorHelper.secondaryBackgroundColor,
      children: [
        SpeedDialChild(
          child: const Icon(Iconsax.emoji_sad5),
          backgroundColor: ColorHelper.redColor,
          label: 'Very Sad',
          onTap: () {
            Get.toNamed('/mood', arguments: 'verySad');
          },
        ),
        SpeedDialChild(
          child: const Icon(Iconsax.emoji_sad),
          backgroundColor: ColorHelper.orangeColor,
          label: 'Sad',
          onTap: () {
            Get.toNamed('/mood', arguments: 'sad');
          },
        ),
        SpeedDialChild(
          child: const Icon(Iconsax.emoji_normal),
          backgroundColor: ColorHelper.yellowColor,
          label: 'Neutral',
          onTap: () {
            Get.toNamed('/mood', arguments: 'neutral');
          },
        ),
        SpeedDialChild(
          child: const Icon(Iconsax.emoji_happy),
          backgroundColor: ColorHelper.greenColor,
          label: 'Happy',
          onTap: () {
            Get.toNamed('/mood', arguments: 'happy');
          },
        ),
        SpeedDialChild(
          child: const Icon(Iconsax.emoji_happy5),
          backgroundColor: ColorHelper.blueColor,
          label: 'Very Happy',
          onTap: () {
            Get.toNamed('/mood', arguments: 'veryHappy');
          },
        ),
      ],
      child: const Icon(Iconsax.emoji_normal5),
    );
  }
}
