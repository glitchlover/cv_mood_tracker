import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MoodFloatingActionButton extends StatelessWidget {
  static const FloatingActionButtonLocation location =
      FloatingActionButtonLocation.centerDocked;
  const MoodFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Iconsax.emoji_normal5),
    );
  }
}
