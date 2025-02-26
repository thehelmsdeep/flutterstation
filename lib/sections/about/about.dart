import 'package:flutter/material.dart';
import 'package:flutterstation/data/keys.dart';
import 'package:flutterstation/sections/about/about_me.dart';
import 'package:flutterstation/sections/about/my_picture.dart';
import 'package:flutterstation/widgets/fade_animation.dart';
import 'package:flutterstation/widgets/responsive_widget.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 128.0, bottom: 64.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const AboutMe(),
              SizedBox(
                  width: ResponsiveWidget.isAtLeastLargeScreen(context)
                      ? 80.0
                      : 0.0),
              if (ResponsiveWidget.isAtLeastLargeScreen(context))
                const FadeAnimation(
                  animationKey: Keys.myPicture,
                  delay: Duration(milliseconds: 1000),
                  child: MyPicture(),
                ),
            ],
          ),
          if (!ResponsiveWidget.isAtLeastLargeScreen(context))
            const FadeAnimation(
              animationKey: Keys.myPicture,
              delay: Duration(milliseconds: 1000),
              child: MyPicture(),
            ),
        ],
      ),
    );
  }
}
