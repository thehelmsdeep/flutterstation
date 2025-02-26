import 'package:flutter/material.dart';
import 'package:flutterstation/home.dart';
import 'package:flutterstation/utils/theme.dart';

void main() {
  runApp(const PersonalWebsite());
}

class PersonalWebsite extends StatelessWidget {
  const PersonalWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter station",
      theme: ThemeData(
        canvasColor: AppColors.backgroundBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Calibre',
      ),
      home: const Home(),
    );
  }
}
