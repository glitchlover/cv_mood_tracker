import 'package:cv_mood_tracker/core/helpers/asset_helper.dart';
import 'package:cv_mood_tracker/core/helpers/color_helper.dart';
import 'package:cv_mood_tracker/core/helpers/space_helper.dart';
import 'package:cv_mood_tracker/core/helpers/style_helper.dart';
import 'package:cv_mood_tracker/presentation/components/common_components.dart';
import 'package:cv_mood_tracker/presentation/components/mood_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

enum Mood { awsome, happy, neutral, sad, awful }

Map<Mood, String> moodMap = {
  Mood.awsome: AssetHelper.awsome,
  Mood.happy: AssetHelper.happy,
  Mood.neutral: AssetHelper.neutral,
  Mood.sad: AssetHelper.sad,
  Mood.awful: AssetHelper.awful,
};

Map<Mood, String> moodTextMap = {
  Mood.awsome: "Awsome",
  Mood.happy: "Happy",
  Mood.neutral: "Neutral",
  Mood.sad: "Sad",
  Mood.awful: "Awful",
};

class MoodScreen extends StatelessWidget {
  const MoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MoodAppBar.plainAppbar(),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(children: [
                const Text("How do you feel?",
                    style: StyleHelper.textStyleLargeSemiBold),
                CommonComponents.itemCard(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // All Moods
                    _buildMoodButton(mood: Mood.awsome),
                    _buildMoodButton(mood: Mood.happy),
                    _buildMoodButton(mood: Mood.neutral),
                    _buildMoodButton(mood: Mood.sad),
                    _buildMoodButton(mood: Mood.awful),
                  ],
                )),
                SpaceHelper.height30,
                const Text("What did you do today?",
                    style: StyleHelper.textStyleLargeSemiBold),
                _inputCard(controller: TextEditingController()),
                SpaceHelper.height30,
                const Text("Describe today's weather?",
                    style: StyleHelper.textStyleLargeSemiBold),
                _inputCard(controller: TextEditingController()),
                SpaceHelper.height30,
                const Text("Write down your thoughts",
                    style: StyleHelper.textStyleLargeSemiBold),
                CommonComponents.itemCard(
                  child: Column(
                    children: [
                      TextField(
                        controller: TextEditingController(),
                        maxLines: 10,
                        decoration: const InputDecoration(
                            hintText: "Enter your notes here...",
                            border: InputBorder.none),
                      ),
                    ],
                  ),
                ),
                SpaceHelper.height40,
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                          ColorHelper.primaryColor)),
                  onPressed: () {
                    // String note = _controller.text;
                    // Save note logic here
                  },
                  child: const Text("Save Mood"),
                ),
              ])),
        ));
  }

  Widget _inputCard({required TextEditingController controller}) {
    return CommonComponents.itemCard(
        child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: Get.context!.width * 0.7,
          child: TextFormField(
            controller: controller,
            enableSuggestions: true,
            decoration: const InputDecoration(
                hintText: "Write here...", border: InputBorder.none),
          ),
        ),
        const Icon(Iconsax.add_circle5)
      ],
    ));
  }

  InkWell _buildMoodButton({required Mood mood}) {
    return InkWell(
      onHover: (value) {
        print("hover");
      },
      onTap: () {
        print("tap");
      },
      child: Column(
        children: [
          Image.asset(
            moodMap[mood]!,
            height: 40,
          ),
          Text(moodTextMap[mood]!, style: StyleHelper.textStyleSmallSemiBold)
        ],
      ),
    );
  }
}
