class MoodState {
  final String id;
  final String label;
  final String emoji;
  final int color;
  final bool isEnable;

  MoodState({
    required this.id,
    required this.label,
    required this.emoji,
    required this.color,
    this.isEnable = true,
  });

  Map<String, Object?> get toMap => {
        'moodId': id,
        'label': label,
        'emoji': emoji,
        'color': color,
      };

  factory MoodState.fromMap(Map<String, Object?> map) => MoodState(
        id: map['moodId'] as String,
        label: map['label'] as String,
        emoji: map['emoji'] as String,
        color: map['color'] as int,
      );
}
