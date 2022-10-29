import 'package:flutter_mood_diary/core/domain/domain.dart';
import 'package:pocket/pocket.dart';

class AppSharedPreferences with PocketCache<IPocketAdapter> {
  @override
  IPocketAdapter get adapterDb => SembastPocket.instance();

  @override
  String get tableName => 'shared_preferences';
}

final listMoodState = [
  MoodState(
    id: '1',
    label: 'Excited',
    emoji: '🤣',
    color: 0xFFE91E63,
  ),
  MoodState(
    id: '2',
    label: 'Happy',
    emoji: '😄',
    color: 0xFFFFC107,
  ),
  MoodState(
    id: '3',
    label: 'Calm',
    emoji: '😎',
    color: 0xFF4CAF50,
  ),
  MoodState(
    id: '4',
    label: 'Angry',
    emoji: '😡',
    color: 0xFFFF9800,
  ),
  MoodState(
    id: '5',
    label: 'Surprised',
    emoji: '😱',
    color: 0xFF9C27B0,
  ),
  MoodState(
    id: '6',
    label: 'Sad',
    emoji: '😭',
    color: 0xFF673AB7,
  ),
  MoodState(
    id: '7',
    label: 'Grateful',
    emoji: '😍',
    color: 0xFFF4511E,
  ),
  MoodState(
    id: '8',
    label: 'Confused',
    emoji: '😵‍💫',
    color: 0xFFFF4081,
  ),
  MoodState(
    id: '9',
    label: 'Sleepy',
    emoji: '😴',
    color: 0xFF512DA8,
  ),
];
