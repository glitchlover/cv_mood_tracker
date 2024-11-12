import 'package:cv_mood_tracker/core/helpers/theme_helper.dart';
import 'package:cv_mood_tracker/core/routes/app_pages.dart';
import 'package:cv_mood_tracker/core/utils/app_bindings.dart';
import 'package:flutter/material.dart';
import 'package:cv_mood_tracker/presentation/screens/home/home_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeHelper.commonTheme,
      initialBinding: AppBindings(),
      getPages: AppPages.routes,
      home: const HomeScreen(),
    );
  }
}

