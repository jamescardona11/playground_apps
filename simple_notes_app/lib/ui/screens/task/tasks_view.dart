import 'package:flutter/material.dart';
import 'package:simple_notes_app/blocs/bloc_exports.dart';
import 'package:simple_notes_app/models/tasks_model.dart';
import 'package:simple_notes_app/ui/ui.dart';

class TasksView extends StatelessWidget {
  TasksView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(builder: (context, state) {
      List<Task> tasksList = state.allTasks;
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: StatGroup(
                      color: Colors.amber,
                      label: 'Completed Tasks',
                    ),
                  ),
                  Expanded(
                    child: StatGroup(
                      color: Colors.indigoAccent,
                      label: 'PendingTask Tasks',
                    ),
                  ),
                ],
              ),
              TasksList(tasks: tasksList),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => showModalBox(context),
          tooltip: 'Add Task',
          child: const Icon(Icons.add),
        ),
      );
    });
  }
}

class StatGroup extends StatelessWidget {
  const StatGroup({
    this.onTap,
    Key? key,
    required this.color,
    required this.label,
    this.taskLength = 0,
  }) : super(key: key);

  final VoidCallback? onTap;
  final String label;
  final int taskLength;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$label: $taskLength',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
