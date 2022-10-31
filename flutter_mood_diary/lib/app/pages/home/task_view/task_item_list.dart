import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/app/widgets/round_container.dart';
import 'package:flutter_mood_diary/app/widgets/widgets.dart';
import 'package:flutter_mood_diary/config/context_extension.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'circular_checkbox.dart';

class TaskItemList extends StatelessWidget {
  const TaskItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundContainer(
      width: context.widthPx,
      height: 70,
      color: context.appColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        child: Column(
          children: [
            Row(
              children: [
                CircularCheckBox(
                  onChange: (value) {},
                ),
                const SizedBox(width: 10),
                Text(
                  'Create user flow for client',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Spacer(),
                CircleContainerAsset(
                  icon: FontAwesomeIcons.ellipsis,
                ),
              ],
            ),
            const Spacer(),
            const SizedBox(
              width: 200,
              child: Divider(
                height: 2,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
