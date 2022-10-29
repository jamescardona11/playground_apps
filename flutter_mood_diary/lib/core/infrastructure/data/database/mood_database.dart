import 'package:flutter_mood_diary/core/infrastructure/data.dart';
import 'package:pocket/pocket.dart';

class MoodDatabase with PocketDatabase<IPocketAdapter, MoodStateDTO> {
  @override
  IPocketAdapter get adapterDb => SembastPocket.instance();

  @override
  MoodStateDTO fromJson(Map<String, dynamic> json) =>
      MoodStateDTO.fromJson(json);

  @override
  String get tableName => 'mood_state';
}
