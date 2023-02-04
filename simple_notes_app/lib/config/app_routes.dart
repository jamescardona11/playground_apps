import 'package:flutter/material.dart';
import 'package:simple_notes_app/screens/recyle_bin_screen.dart';
import 'package:simple_notes_app/screens/tasks_screen.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case TasksScreen.id:
        return MaterialPageRoute(builder: (_) => const TasksScreen());
      case RecyleBinScreen.id:
        return MaterialPageRoute(builder: (_) => const RecyleBinScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
