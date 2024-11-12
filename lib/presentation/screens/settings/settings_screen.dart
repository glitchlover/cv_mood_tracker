
import 'package:cv_mood_tracker/core/helpers/container_helper.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerHelper.mainScaffold(child: const Text("Chart"));
  }
}
