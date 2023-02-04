import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/app/widgets/input_text_widget.dart';
import 'package:flutter_mood_diary/app/widgets/round_container.dart';
import 'package:flutter_mood_diary/app/widgets/widgets.dart';
import 'package:flutter_mood_diary/config/context_extension.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My task',
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 20),
            HeaderCurrentTaskItem(
              color: context.appColors.blue.withOpacity(0.5),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (_, index) => Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: TaskItemList(),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        color: Colors.amber,
        child: GestureDetector(
          onTap: () {},
          child: Text('Texto 1'),
        ),
      ),
    );
  }
}
