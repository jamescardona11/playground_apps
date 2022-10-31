import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/config/context_extension.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CircleContainerAsset extends StatelessWidget {
  const CircleContainerAsset({
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
          padding: const EdgeInsets.all(8),
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
