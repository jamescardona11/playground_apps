import 'package:flutter_mood_diary/core/domain/domain.dart';
import 'package:flutter_mood_diary/core/infrastructure/data/database/app_shared_preferences.dart';

class MoodRepository extends IMoodRepository {
  MoodRepository(this._dataSource);

  final AppSharedPreferences _dataSource;

  @override
  Future<void> createFirstTimeMoods() async {
    // _dataSource.
  }

  @override
  Stream<MoodState> readAllMoods({bool enable = false}) {
    // TODO: implement readAllMoods
    throw UnimplementedError();
  }

  @override
  Future<void> updateMoodState(MoodState mood) {
    // TODO: implement updateMoodState
    throw UnimplementedError();
  }
}
