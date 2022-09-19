import 'package:flutter/material.dart';

class MoodState {
  final String id;
  final String label;
  final String emoji;
  final Color color;
  final bool enable;

  MoodState({
    required this.id,
    required this.label,
    required this.emoji,
    required this.color,
    this.enable = true,
  });

  Map<String, Object?> get toMap => {
        'moodId': id,
        'label': label,
        'emoji': emoji,
        'color': color.value,
      };

  factory MoodState.fromMap(Map<String, Object?> map) => MoodState(
        id: map['moodId'] as String,
        label: map['label'] as String,
        emoji: map['emoji'] as String,
        color: Color(map['color'] as int),
      );
}

final listMoodState = [
  MoodState(id: '1', label: 'Excited', emoji: '🤣', color: Colors.pink),
  MoodState(id: '2', label: 'Happy', emoji: '😄', color: Colors.amber),
  MoodState(id: '3', label: 'Calm', emoji: '😎', color: Colors.green),
  MoodState(id: '4', label: 'Angry', emoji: '😡', color: Colors.orange),
  MoodState(id: '5', label: 'Surprised', emoji: '😱', color: Colors.purple),
  MoodState(id: '6', label: 'Sad', emoji: '😭', color: Colors.deepPurple),
  MoodState(id: '7', label: 'Grateful', emoji: '😍', color: Colors.deepOrange),
  MoodState(
      id: '8', label: 'Confused', emoji: '😵‍💫', color: Colors.pinkAccent),
  MoodState(id: '9', label: 'Sleepy', emoji: '😴', color: Colors.deepPurple),
];
