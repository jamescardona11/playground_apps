import 'package:flutter_mood_diary/core/domain/mood/i_mood_repository.dart';
import 'package:flutter_mood_diary/core/infrastructure/data.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DIData {
  @Singleton(as: IMoodRepository)
  MoodRepository get moodRepository;
}
