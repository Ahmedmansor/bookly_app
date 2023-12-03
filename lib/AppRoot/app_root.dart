import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_setting.dart';
import 'package:bookly_app/core/utils/navigation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    AppSettings.init(context);

    return MaterialApp.router(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      // home: const SplashView(),
      routerConfig: NavigationUtitils.router,
    );
  }
}
