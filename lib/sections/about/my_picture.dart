import 'package:flutter/material.dart';
import 'package:flutterstation/utils/extensions.dart';


class MyPicture extends StatefulWidget {
  const MyPicture({super.key});

  @override
  State<MyPicture> createState() => _MyPictureState();
}

class _MyPictureState extends State<MyPicture> {


  @override
  Widget build(BuildContext context) {


    return Image.asset(
      'ashkan'.jpeg,
       width: 350,
      height: 350,
    );
  }


}
