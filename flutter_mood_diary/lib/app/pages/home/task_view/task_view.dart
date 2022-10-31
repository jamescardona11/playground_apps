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
import 'task_item_list.dart';

class TaskView extends StatelessWidget {
  /// default constructor
  const TaskView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Text(
            'My task',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 160,
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
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 16,
            ),
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (_, index) => Padding(
                padding: const EdgeInsets.only(top: 8),
                child: TaskItemList(),
              ),
              // separatorBuilder: (context, index) => Divider(
              //   height: 2,
              //   color: Colors.grey,
              // ),
            ),
          ),
        )
      ],
    );
  }
}
