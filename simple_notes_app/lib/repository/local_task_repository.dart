import 'package:simple_notes_app/models/tasks_model.dart';

class LocalTaskRepository {
  Future<void> saveTaskInDB(Task task) async {}

  Future<void> updateTaskInDB(Task task) async {}

  // change state to deleted
  Future<void> deleteTaskInDB(String id) async {}

  Future<void> removeTaskFromDB(String id) async {}
}
