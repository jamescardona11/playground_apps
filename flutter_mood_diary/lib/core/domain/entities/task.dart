class Task {
  Task({
    required this.title,
    required this.date,
    required this.wasCompleted,
    required this.activity,
  });

  final String title;
  final DateTime date;
  final bool wasCompleted;
  final String activity;

  @override
  String toString() {
    return 'Task(title: $title, date: $date, wasCompleted: $wasCompleted, activity: $activity)';
  }
}
