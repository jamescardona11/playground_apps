import 'package:flutter/material.dart';
import 'package:flutter_contact_card/constants.dart';
import 'package:flutter_contact_card/icon_container.dart';
import 'package:flutter_contact_card/read_json.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF202020, <int, Color>{
          50: Color(0xFFE4E4E4),
          100: Color(0xFFBCBCBC),
          200: Color(0xFF909090),
          300: Color(0xFF636363),
          400: Color(0xFF414141),
          500: Color(0xFF202020),
          600: Color(0xFF1C1C1C),
          700: Color(0xFF181818),
          800: Color(0xFF131313),
          900: Color(0xFF0B0B0B),
        }),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  /// default constructor
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // [widgets, widget, widget]

  @override
  void initState() {
    super.initState();
  }

  Future<Map<String, dynamic>> loadInfo() async {
    await Future.delayed(Duration(milliseconds: 1000));
    return parseJsonFromAssets('assets/info.json');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<Map<String, dynamic>>(
          future: loadInfo(),
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data != null) {
              final username = snapshot.data!['username'];
              final description = snapshot.data!['description'];
              final actions = snapshot.data!['actions'] as List<dynamic>;

              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center, // child
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage(avatarImg),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          username,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.purple[900],
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 12),
                      ...List.generate(
                        actions.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: SizedBox(
                            width: 300,
                            height: 50,
                            child: ElevatedButton(
                              style: TextButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(18.0),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(actions[index]),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        // mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconContainer(
                            icon: Icons.person,
                          ),
                          IconContainer(
                            icon: Icons.facebook,
                          ),
                          IconContainer(
                            icon: Icons.join_full,
                          ),
                        ],
                      )
                      // json
                    ],
                  ),
                ),
              );
            }

            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
