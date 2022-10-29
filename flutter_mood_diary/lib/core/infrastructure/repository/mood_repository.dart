import 'package:flutter_mood_diary/core/domain/domain.dart';
import 'package:flutter_mood_diary/core/infrastructure/data/database/local_mood_data_source.dart';

class MoodRepository extends IMoodRepository {
  final LocalMoodDataSource _dataSource = LocalMoodDataSource();

  MoodRepository() {
    // _dataSource = ;
  }

  @override
  Future<void> createFirstTimeMoods() {
    // TODO: implement createFirstTimeMoods
    throw UnimplementedError();
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
