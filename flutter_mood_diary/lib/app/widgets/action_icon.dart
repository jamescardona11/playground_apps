import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActionIcon extends StatelessWidget {
  /// default constructor
  const ActionIcon({
    Key? key,
    required this.background,
    required this.iconColor,
    required this.icon,
  }) : super(key: key);

  final Color background;
  final Color iconColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: background,
        borderRadius: const BorderRadius.all(
          Radius.circular(18),
        ),
      ),
      child: Center(
        child: FaIcon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
