import 'package:cv_mood_tracker/core/helpers/asset_helper.dart';

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