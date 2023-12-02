import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_setting.dart';
import 'package:bookly_app/features/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    AppSettings.init(context);

    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: const SplashView(),
    );
  }
}
