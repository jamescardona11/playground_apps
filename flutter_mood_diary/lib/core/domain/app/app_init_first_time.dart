import 'package:flutter_mood_diary/core/domain/app/i_app_repository.dart';
import 'package:flutter_mood_diary/core/domain/core/i_use_case.dart';

class AppInitFirstTimeData {}

class AppInitFirstTime extends CommandUseCase<AppInitFirstTimeData> {
  final IAppRepository _repository;

  AppInitFirstTime(this._repository);
  @override
  void call(AppInitFirstTimeData data) =>
      _repository.initMoodStateForFirstTime();
}
