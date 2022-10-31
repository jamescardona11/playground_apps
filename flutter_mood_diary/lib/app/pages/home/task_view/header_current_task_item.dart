import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/app/widgets/widgets.dart';
import 'package:flutter_mood_diary/config/context_extension.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'circular_checkbox.dart';

class HeaderCurrentTaskItem extends StatelessWidget {
  const HeaderCurrentTaskItem({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return ColorCardWidget(
      width: context.widthPct(85),
      height: 160,
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircularCheckBox(
                  onChange: (value) {},
                ),
                Text('25 Jun'),
                const Spacer(),
                const FaIcon(FontAwesomeIcons.ellipsis),
              ],
            ),
            const Spacer(),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 3,
                ),
                child: Text('Designer team'),
              ),
            ),
            Row(
              children: [
                CircleContainerAsset(
                  icon: FontAwesomeIcons.fire,
                ),
                Text('Create user flow for client'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
