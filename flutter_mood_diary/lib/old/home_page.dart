import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/old/view/checkin_view.dart';
import 'package:flutter_mood_diary/old/view/history_view.dart';
import 'package:flutter_mood_diary/old/view/settings_view.dart';

import 'data/mood_database.dart';
import 'widgets/floating_bar.dart';

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
  late final PageController controller;

  @override
  void initState() {
    controller = PageController();
    // initDatabase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: initDatabase(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center();
            }

            return PageView(
              controller: controller,
              physics: NeverScrollableScrollPhysics(),
              children: [
                HistoryView(
                  database: moodDatabase,
                ),
                CheckinView(
                  database: moodDatabase,
                ),
                SettingsView(),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: FloatingBottomBar(
        onChangeItem: (index) {
          controller.animateToPage(
            index,
            duration: Duration(milliseconds: 200),
            curve: Curves.linear,
          );
        },
        items: [
          Icons.home,
          Icons.star_rate,
          Icons.settings,
        ],
      ),
    );
  }

  @override
  void dispose() {
    moodDatabase.closeDatabase();
    super.dispose();
  }

  Future<bool> initDatabase() async {
    moodDatabase = MoodDatabase(storesName: [moodStore]);
    await moodDatabase.init();
    return true;
  }
}
