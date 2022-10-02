import 'package:chuck_norris_flutter/chuck_controller.dart';
import 'package:chuck_norris_flutter/model/chuck_joke.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

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

class HomePage extends StatefulWidget {
  /// default constructor
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ChuckController controller = ChuckController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Text'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                print('+1');
                controller.getRandomJoke();
              },
              child: Icon(Icons.plus_one),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                print('R');
                controller.getPeriodicRandomJoke();
              },
              child: Icon(Icons.cyclone),
            ),
          ),
        ],
      ),
      body: StreamBuilder<List<ChuckJoke>>(
          stream: controller.jokes,
          builder: (_, snapshot) {
            if (snapshot.hasData) {
              final jokes = snapshot.requireData;
              return ListView.builder(
                itemCount: jokes.length,
                itemBuilder: (_, index) => ListTile(
                  title: Text('Category: ${jokes[index].category}'),
                  subtitle: Text(jokes[index].value),
                ),
              );
            }

            return Container(
              child: Center(child: Text('No Data')),
            );
          }),
    );
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }
}
