// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../core/domain/i_repositories/i_mood_repository.dart' as _i4;
import '../../core/infrastructure/data.dart' as _i3;
import 'di_data.dart' as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final dIInfrastructure = _$DIInfrastructure(get);
  gh.factory<_i3.AppSharedPreferences>(
      () => dIInfrastructure.localMoodDataSource);
  gh.singleton<_i4.IMoodRepository>(dIInfrastructure.moodRepository);
  return get;
}

class _$DIInfrastructure extends _i5.DIInfrastructure {
  _$DIInfrastructure(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i3.AppSharedPreferences get localMoodDataSource =>
      _i3.AppSharedPreferences();
  @override
  _i3.MoodRepository get moodRepository =>
      _i3.MoodRepository(_getIt<_i3.AppSharedPreferences>());
}
