import 'package:flutter/material.dart';
import 'package:cv_mood_tracker/core/helpers/color_helper.dart';
import 'package:cv_mood_tracker/core/helpers/style_helper.dart';

class CommonComponents {
  static Widget itemCard({required Widget child, String? imageUrl}) {
    return Card(
      shadowColor: ColorHelper.shadowColor,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(children: [
        imageUrl != null
            ? Image.asset(
                imageUrl,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              )
            : Container(),
        Container(
            padding: const EdgeInsets.all(16.0),
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: ColorHelper.cardColor,
            ),
            child: child)
      ]),
    );
  }

  static Widget bottomBarIconButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
    required bool isSelected,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon,
              size: 24,
              color: isSelected
                  ? ColorHelper.primaryColor
                  : ColorHelper.secondaryForground),
          isSelected
              ? Text(
                  label,
                  style: StyleHelper.textStyleSmallNormal,
                )
              : Container(
                  height: 12,
                ),
        ],
      ),
    );
  }
}
