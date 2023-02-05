import 'package:flutter/material.dart';
import 'package:simple_notes_app/ui/ui.dart';

class HomePage extends StatefulWidget {
  /// default constructor
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks App'),
        // actions: [
        //   IconButton(
        //     onPressed: () => showModalBox(context),
        //     icon: const Icon(Icons.add),
        //   ),
        // ],
      ),
      drawer: MyDrawer(
        onDrawerItemTap: onDrawerItemTap,
      ),
      body: pageList[indexPage],
    );
  }

  final pageList = [
    const TasksView(),
  ];

  void onDrawerItemTap(int index) {}
}
