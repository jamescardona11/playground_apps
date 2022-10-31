import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/app/widgets/input_text_widget.dart';
import 'package:flutter_mood_diary/app/widgets/round_container.dart';
import 'package:flutter_mood_diary/app/widgets/widgets.dart';
import 'package:flutter_mood_diary/config/context_extension.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sheet/sheet.dart';

import 'circular_checkbox.dart';
import 'header_current_task_item.dart';

class TaskView extends StatelessWidget {
  /// default constructor
  const TaskView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        children: [
          SizedBox(
            height: 180,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                bool isLast = index == 3;
                return Padding(
                  padding: EdgeInsets.only(
                    right: isLast ? 16 : 0,
                    left: 16,
                  ),
                  child: HeaderCurrentTaskItem(
                    color: context.appColors.blue.withOpacity(0.5),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
