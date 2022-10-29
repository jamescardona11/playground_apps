import 'package:flutter_mood_diary/core/base/i_use_case.dart';
import 'package:flutter_mood_diary/core/domain/i_repositories/i_app_repository.dart';

class AppInitFirstTimeData {}

class AppInitFirstTime extends CommandUseCase<AppInitFirstTimeData> {
  final IAppRepository _repository;

  AppInitFirstTime(this._repository);
  @override
  void call(AppInitFirstTimeData data) =>
      _repository.initMoodStateForFirstTime();
}
