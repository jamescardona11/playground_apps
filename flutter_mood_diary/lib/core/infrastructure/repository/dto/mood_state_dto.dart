import 'package:flutter_mood_diary/core/domain/domain.dart';
import 'package:pocket/pocket.dart';

class MoodStateDTO extends IPocketModel {
  final MoodState moodState;

  MoodStateDTO({required this.moodState});

  @override
  String get id => moodState.id;

  @override
  Map<String, dynamic> toJson() => moodState.toMap;

  factory MoodStateDTO.fromJson(Map<String, dynamic> json) =>
      MoodStateDTO(moodState: MoodState.fromMap(json));
}
