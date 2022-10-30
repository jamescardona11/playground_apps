import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/app/widgets/widgets.dart';
import 'package:flutter_mood_diary/config/context_extension.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'circular_checkbox.dart';

class HeaderCurrentTaskItem extends StatelessWidget {
  const HeaderCurrentTaskItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColorCardWidget(
      height: 160,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          top: 16,
          bottom: 16,
          right: 26,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircularCheckBox(
                  onChange: ((value) {}),
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
                CircleContainerForIcons(
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
