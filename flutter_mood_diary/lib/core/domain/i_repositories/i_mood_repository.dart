import 'package:flutter_mood_diary/core/domain/entities/mood_state.dart';

abstract class IMoodRepository {
  Future<void> createFirstTimeMoods();

  Future<void> updateMoodState(MoodState mood);

  Stream<MoodState> readAllMoods({bool enable = false});
}
