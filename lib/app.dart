import 'package:flutter/material.dart';
import 'ui/screens/home_screen.dart';
import 'theme/colors.dart';

class HarmonyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Harmony Premium',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Montserrat',
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
