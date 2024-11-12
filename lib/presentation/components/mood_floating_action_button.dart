import 'package:cv_mood_tracker/core/helpers/color_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
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
            // Handle very sad mood
          },
        ),
        SpeedDialChild(
          child: const Icon(Iconsax.emoji_sad),
          backgroundColor: ColorHelper.orangeColor,
          label: 'Sad',
          onTap: () {
            // Handle sad mood
          },
        ),
        SpeedDialChild(
          child: const Icon(Iconsax.emoji_normal),
          backgroundColor: ColorHelper.yellowColor,
          label: 'Neutral',
          onTap: () {
            // Handle neutral mood
          },
        ),
        SpeedDialChild(
          child: const Icon(Iconsax.emoji_happy),
          backgroundColor: ColorHelper.greenColor,
          label: 'Happy',
          onTap: () {
            // Handle happy mood
          },
        ),
        SpeedDialChild(
          child: const Icon(Iconsax.emoji_happy5),
          backgroundColor: ColorHelper.blueColor,
          label: 'Very Happy',
          onTap: () {
            // Handle very happy mood
          },
        ),
      ],
      child: const Icon(Iconsax.emoji_normal5),
    );
  }
}
