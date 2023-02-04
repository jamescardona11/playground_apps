import 'package:flutter/material.dart';
import 'package:simple_notes_app/ui/ui.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case TasksScreen.id:
        return MaterialPageRoute(builder: (_) => const TasksScreen());
      case 'recycle-bin':
        return MaterialPageRoute(builder: (_) => const RecycleBinScreen());
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
