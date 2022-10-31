import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/config/context_extension.dart';

class RoundContainer extends StatelessWidget {
  /// default constructor
  const RoundContainer({
    Key? key,
    required this.width,
    this.height,
    this.color = Colors.transparent,
    this.borderColor,
    this.child,
  }) : super(key: key);

  final double width;
  final double? height;

  final Color color;
  final Color? borderColor;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: color,
        border: borderColor != null
            ? Border.all(
                color: borderColor!,
              )
            : null,
      ),
      child: child,
    );
  }
}
