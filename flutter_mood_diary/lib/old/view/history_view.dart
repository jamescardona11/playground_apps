import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/core/domain/mood/mood_state.dart';
import 'package:flutter_mood_diary/old/data/mood_database.dart';

class HistoryView extends StatefulWidget {
  /// default constructor
  const HistoryView({
    Key? key,
    required this.database,
  }) : super(key: key);

  final IMoodDatabase database;

  @override
  State<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map<String, Object?>>>(
      future: widget.database.readAllInformation(moodStore),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (snapshot.data == null) {
          return Center(
            child: Text(
              'Please set a first Mood state',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          );
        }

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: ((context, index) {
              final mood = MoodState.fromMap(snapshot.data![index]);

              return SizedBox(
                height: 90,
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(mood.emoji),
                      SizedBox(width: 5),
                      Text(
                        mood.label,
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(mood.color),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
