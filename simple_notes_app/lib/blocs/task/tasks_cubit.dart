import 'package:equatable/equatable.dart';
import 'package:simple_notes_app/models/tasks_model.dart';

import '../bloc_exports.dart';

part 'tasks_state.dart';

class TasksBloc extends Cubit<TasksState> {
  TasksBloc() : super(const TasksState());

  void addTask(Task task) {
    List<Task> allTasks = List.from(state.allTasks)..add(task);

    emit(TasksState(allTasks: allTasks, removedTasks: state.removedTasks));
  }

  void updateTask(Task task) {
    int index = List.from(state.allTasks).indexOf(task);
    List<Task> allTasks = List.from(state.allTasks)..remove(task);
    task.isDone == false ? allTasks.insert(index, task.copyWith(isDone: true)) : allTasks.insert(index, task.copyWith(isDone: false));

    emit(TasksState(allTasks: allTasks, removedTasks: state.removedTasks));
  }

  // archive task - delete temporary
  void deleteTask(String id) {}

  void removeTask(String id) {}
}
