import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/config/context_extension.dart';

class ColorCardWidget extends StatelessWidget {
  const ColorCardWidget({
    Key? key,
    this.height,
    required this.color,
    this.child,
  }) : super(key: key);

  final double? height;
  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        SizedBox(
          height: height,
          width: double.maxFinite,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: color,
              borderRadius: context.appSizes.borderRadius30,
            ),
            child: child,
          ),
        ),
      ],
    );
  }
}
