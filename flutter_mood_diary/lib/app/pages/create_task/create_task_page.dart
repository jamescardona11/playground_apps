import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/app/widgets/input_text_widget.dart';
import 'package:flutter_mood_diary/app/widgets/widgets.dart';
import 'package:flutter_mood_diary/config/context_extension.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateTaskPage extends StatelessWidget {
  /// default constructor
  const CreateTaskPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create',
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: 20),
              InputTextWidget(
                width: double.maxFinite,
                hint: 'Description',
                icon: FontAwesomeIcons.plus,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: InputTextWidget(
                      hint: 'Date',
                      icon: FontAwesomeIcons.calendar,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: InputTextWidget(
                      hint: 'Priority',
                      icon: FontAwesomeIcons.vial,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              InputTextWidget(
                width: double.maxFinite,
                hint: 'Project',
                icon: FontAwesomeIcons.featherPointed,
              ),
              const SizedBox(height: 10),
              InputTextWidget(
                width: double.maxFinite,
                hint: 'Tags',
                icon: FontAwesomeIcons.tags,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: ActionIcon(
        background: context.appColors.blueBlack,
        icon: FontAwesomeIcons.arrowRight,
        iconColor: context.appColors.white,
      ),
    );
  }
}
