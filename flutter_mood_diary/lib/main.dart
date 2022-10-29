import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/di/di.dart';
import 'package:pocket/pocket.dart';

void main() async {
  configureDependencies();

  await SembastPocket.initAdapter('mood_app.db');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  /// default constructor
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Text'),
      ),
      body: Center(
        child: Text('New Page'),
      ),
    );
  }
}
