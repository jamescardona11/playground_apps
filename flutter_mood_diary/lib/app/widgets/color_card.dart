import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/config/context_extension.dart';

import 'round_container.dart';

class ColorCardWidget extends StatelessWidget {
  const ColorCardWidget({
    Key? key,
    this.height,
    this.width,
    required this.color,
    this.child,
  }) : super(key: key);

  final double? height;
  final double? width;
  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        RoundContainer(
          height: height,
          width: width ?? context.widthPx,
          color: color,
          child: child,
        ),
      ],
    );
  }
}
