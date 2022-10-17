import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/app/data/local_mood_data.dart';
import 'package:flutter_mood_diary/app/domain/domain.dart';

import 'mood_card.dart';

class AvailableMoodsPage extends StatelessWidget {
  /// default constructor
  const AvailableMoodsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        children: [
          const Text(
            'How are you feeling today ?',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
            child: GridView.count(
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              crossAxisCount: 3,
              children: listMoodState
                  .map((item) => GestureDetector(
                        onTap: () {
                          _showDialog(context, item);
                        },
                        child: MoodCardWidget(
                          emoji: item.emoji,
                          label: item.label,
                          color: Color(item.color),
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
            onPressed: () {},
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
