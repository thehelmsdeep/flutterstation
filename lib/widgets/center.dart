import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {

  final Widget child;


  final double maxWidthToResize;


  final bool enabled;

  final Color color;

  final ImageProvider? edgesImage;

  const CenterWidget({
    super.key,
    required this.child,
    this.color = const Color(0xfff8f8f8),
    this.maxWidthToResize = 900,
    this.enabled = kIsWeb,
    this.edgesImage,
  });

  @override
  Widget build(BuildContext context) {
    if (!enabled) return child;

    final width = MediaQuery.of(context).size.width > maxWidthToResize
        ? maxWidthToResize
        : MediaQuery.of(context).size.width;

    return Container(
      decoration: edgesImage == null
          ? BoxDecoration(color: color)
          : BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: edgesImage!,
        ),
      ),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      child: SizedBox(
        width: width,
        child: child,
      ),
    );
  }
}