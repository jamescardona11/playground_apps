import 'package:flutter_mood_diary/app/domain/mood/mood_state.dart';

abstract class MoodRepository {
  Future<void> createFirstTimeMoods();

  Future<void> updateMoodState(String id);

  Stream<MoodState> readAllMoods({bool enable = false});
}
