import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/app/widgets/input_text_widget.dart';
import 'package:flutter_mood_diary/app/widgets/widgets.dart';
import 'package:flutter_mood_diary/config/context_extension.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'circular_checkbox.dart';

class CreatePage extends StatelessWidget {
  /// default constructor
  const CreatePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 40),
              Text(
                'Create',
                style: Theme.of(context).textTheme.headline1,
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: context.appColors.blueBlack,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: FaIcon(
                  FontAwesomeIcons.arrowRight,
                  color: context.appColors.white,
                  size: 20,
                ),
              )
            ],
          ),
          InputTextWidget(
            hint: 'asjasjasj',
            icon: FontAwesomeIcons.plus,
          ),
          Row(
            children: [
              InputTextWidget(
                hint: 'asjasjasj',
                icon: FontAwesomeIcons.calendar,
              ),
              InputTextWidget(
                hint: 'asjasjasj',
                icon: FontAwesomeIcons.vial,
              ),
            ],
          ),
          InputTextWidget(
            hint: 'asjasjasj',
            icon: FontAwesomeIcons.featherPointed,
          ),
        ],
      ),
    );
  }
}
