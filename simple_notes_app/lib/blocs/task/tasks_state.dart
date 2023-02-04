part of 'tasks_cubit.dart';

class TasksState extends Equatable {
  final List<Task> allTasks;
  final List<Task> removedTasks;
  const TasksState({
    this.allTasks = const <Task>[],
    this.removedTasks = const <Task>[],
  });

  @override
  List<Object> get props => [allTasks, removedTasks];

  TasksState copyWith({
    List<Task>? allTasks,
    List<Task>? removedTasks,
  }) {
    return TasksState(
      allTasks: allTasks ?? this.allTasks,
      removedTasks: removedTasks ?? this.removedTasks,
    );
  }
}
