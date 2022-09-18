import 'package:flutter/material.dart';
import 'package:mood_diary_flutter/mood_card.dart';
import 'package:mood_diary_flutter/mood_database.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'floating_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  // stateful
  /// default constructor
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final IMoodDatabase moodDatabase;

  @override
  void initState() {
    initDatabase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: MoodCardWidget(
            emoji: '😹',
            label: 'Laugh',
            color: Colors.amber,
          ),
        ),
      ),
      bottomNavigationBar: FloatingBottomBar(
        items: [
          Icons.home,
          Icons.star_rate,
          Icons.settings,
        ],
      ),
    );
  }

  Future<void> initDatabase() async {
    moodDatabase = MoodDatabase(storesName: ['mood']);
    moodDatabase.init();
  }
}
