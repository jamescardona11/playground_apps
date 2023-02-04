import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  /// default constructor
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: Center(
        child: Text('New Page'),
      ),
    );
  }
}
