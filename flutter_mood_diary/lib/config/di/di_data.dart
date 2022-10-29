import 'package:flutter_mood_diary/core/domain/i_repositories/i_mood_repository.dart';
import 'package:flutter_mood_diary/core/infrastructure/data.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DIInfrastructure {
  @Singleton(as: IMoodRepository)
  MoodRepository get moodRepository;

  AppSharedPreferences get localMoodDataSource;
}
