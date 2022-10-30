import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/app/widgets/widgets.dart';

import 'package:flutter_mood_diary/config/context_extension.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'circular_checkbox.dart';

class TaskPage extends StatelessWidget {
  /// default constructor
  const TaskPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          ColorCardWidget(
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
                  // CircleContinerForIcons(
                  //   icon: FontAwesomeIcons.fire,
                  // ),
                  Text('Create user flow for client'),
                  Spacer(),
                  CircleContinerForIcons(
                    icon: FontAwesomeIcons.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
