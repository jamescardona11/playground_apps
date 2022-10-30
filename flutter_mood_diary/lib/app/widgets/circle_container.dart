import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/config/context_extension.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CircleContinerForIcons extends StatelessWidget {
  const CircleContinerForIcons({
    Key? key,
    this.asset,
    this.icon,
    this.size,
    this.iconColor,
  }) : super(key: key);

  final String? asset;
  final IconData? icon;
  final Color? iconColor;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.appColors.white,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: context.appSizes.margin8,
          child: asset != null
              ? Image.asset(asset!)
              : FaIcon(
                  icon,
                  size: 20,
                  color: iconColor,
                ),
        ),
      ),
    );
  }
}
