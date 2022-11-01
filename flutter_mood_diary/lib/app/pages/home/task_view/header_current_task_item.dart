import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/app/widgets/round_container.dart';
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
    return RoundContainer(
      width: context.widthPx,
      height: 140,
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
                const SizedBox(width: 8),
                Text('25 Jun'),
                const Spacer(),
                const FaIcon(FontAwesomeIcons.ellipsis),
              ],
            ),
            const Spacer(),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.6),
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                child: Text(
                  'Designer team',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                CircleContainerAsset(
                  icon: FontAwesomeIcons.fire,
                ),
                const SizedBox(width: 10),
                Text(
                  'Create user flow for client',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
