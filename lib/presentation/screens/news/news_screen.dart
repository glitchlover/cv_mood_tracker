
import 'package:cv_mood_tracker/core/helpers/container_helper.dart';
import 'package:cv_mood_tracker/database/mocks/mood_news.dart';
import 'package:cv_mood_tracker/presentation/components/mood_news_card.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return ContainerHelper.mainScaffold(
      child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) => MoodNewsCard(
              imageUrl: moodNews[index]["imageUrl"],
              title: moodNews[index]["title"],
              tag: moodNews[index]["tag"],
            ),
          ),
    );
  }
}
