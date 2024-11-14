import 'package:cv_mood_tracker/core/helpers/asset_helper.dart';
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
          child: Image.asset(AssetHelper.awful),
          backgroundColor: Colors.transparent,
          label: 'Awful',
          onTap: () {
            Get.toNamed('/mood', arguments: 'awful');
          },
        ),
        SpeedDialChild(
          child: Image.asset(AssetHelper.sad),
          backgroundColor: Colors.transparent,
          label: 'Sad',
          onTap: () {
            Get.toNamed('/mood', arguments: 'sad');
          },
        ),
        SpeedDialChild(
          child: Image.asset(AssetHelper.neutral),
          backgroundColor: Colors.transparent,
          label: 'Neutral',
          onTap: () {
            Get.toNamed('/mood', arguments: 'neutral');
          },
        ),
        SpeedDialChild(
          child: Image.asset(AssetHelper.happy),
          backgroundColor: Colors.transparent,
          label: 'Happy',
          onTap: () {
            Get.toNamed('/mood', arguments: 'happy');
          },
        ),
        SpeedDialChild(
          child: Image.asset(AssetHelper.awsome),
          backgroundColor: Colors.transparent,
          label: 'Awsome',
          onTap: () {
            Get.toNamed('/mood', arguments: 'awsome');
          },
        ),
      ],
      child: const Icon(Iconsax.emoji_normal5),
    );
  }
}
