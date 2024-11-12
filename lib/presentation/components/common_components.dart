import 'package:flutter/material.dart';
import 'package:cv_mood_tracker/core/helpers/color_helper.dart';
import 'package:cv_mood_tracker/core/helpers/style_helper.dart';

class CommonComponents {
  static Widget itemCard({required String title, required IconData icon}) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorHelper.primaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 30),
          Text(
            title,
            style: StyleHelper.textStyleMediumBold,
          ),
        ],
      ),
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
                  : ColorHelper.mutedForgroundColor),
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
