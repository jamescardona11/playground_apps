import 'package:flutter/material.dart';
import 'package:mood_diary_flutter/data/mood_database.dart';
import 'package:mood_diary_flutter/widgets/mood_card.dart';

import '../data/mood_state.dart';

class CheckinView extends StatelessWidget {
  /// default constructor
  const CheckinView({
    super.key,
    required this.database,
  });

  final IMoodDatabase? database;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        children: [
          Text(
            'How are you feeling today ?',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 40),
          Expanded(
            child: GridView.count(
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              crossAxisCount: 3,
              children: listMoodState
                  .map((item) => GestureDetector(
                        onTap: () {
                          // save item en la base de datos
                          _showDialog(context, item);
                        },
                        child: MoodCardWidget(
                          emoji: item.emoji,
                          label: item.label,
                          color: item.color,
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  void _showDialog(BuildContext context, MoodState item) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Do you want to save this mood?'),
        // content: const Text('AlertDialog description'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              database?.saveInformation(moodStore, item.toMap);

              Navigator.pop(context, 'ok');
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
