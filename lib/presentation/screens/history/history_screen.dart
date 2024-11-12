
import 'package:cv_mood_tracker/core/helpers/container_helper.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerHelper.mainScaffold(child: const Text("Chart"));
  }
}
