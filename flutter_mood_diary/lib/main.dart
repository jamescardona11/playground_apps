import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/config/context_extension.dart';
import 'package:flutter_mood_diary/config/di/di.dart';
import 'package:flutter_mood_diary/config/theme/colors_extension.dart';
import 'package:pocket/pocket.dart';

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
    final AppColors colors = Theme.of(context).extension<AppColors>()!;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello there 🖐',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'A great day to change your mood',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              SizedBox(
                height: 200,
                width: double.maxFinite,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: context.appColors.blue,
                    borderRadius: context.appSizes.borderRadius25,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
