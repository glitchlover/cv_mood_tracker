import 'package:cv_mood_tracker/core/helpers/color_helper.dart';
import 'package:cv_mood_tracker/core/helpers/style_helper.dart';
import 'package:cv_mood_tracker/presentation/components/common_components.dart';
import 'package:flutter/material.dart';

class MoodNewsCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String tag;

  const MoodNewsCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // News Image
        CommonComponents.itemCard(
          imageUrl: imageUrl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // News Title
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              // Tag Chip
              Chip(
                labelStyle: StyleHelper.textStyleSmallBold,
                label: Text(
                  tag,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                backgroundColor: ColorHelper.blueColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side: const BorderSide(
                        width: 1, color: ColorHelper.blueColor)),
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
