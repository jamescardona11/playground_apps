import 'package:flutter/material.dart';

import 'package:flutter_mood_diary/config/di/di.dart';
import 'package:pocket/pocket.dart';

import 'app/pages/home/task_view/task_view.dart';
import 'config/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  await SembastPocket.initAdapter('mood_app.db');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(),
      home: Scaffold(
        body: SafeArea(
          child: TaskPage(),
        ),
      ),
    );
  }
}
