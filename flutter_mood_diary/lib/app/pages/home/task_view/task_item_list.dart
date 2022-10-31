import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/app/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'circular_checkbox.dart';

class TaskItemList extends StatelessWidget {
  const TaskItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColorCardWidget(
      // height: 160,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 16,
        ),
        child: Row(
          children: [
            CircularCheckBox(
              onChange: (value) {},
            ),
            Text('Create user flow for client'),
            Spacer(),
            CircleContainerAsset(
              icon: FontAwesomeIcons.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
