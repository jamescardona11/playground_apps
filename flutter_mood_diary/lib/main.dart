import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/config/context_extension.dart';
import 'package:flutter_mood_diary/config/di/di.dart';
import 'package:pocket/pocket.dart';

import 'app/widgets/bottom_item.dart';
import 'app/widgets/floating_bottom_bar.dart';
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
              const NewTaskCard(),
              ColorCardWidget(
                color: context.appColors.green.withOpacity(0.7),
              ),
              ColorCardWidget(
                color: context.appColors.yellow.withOpacity(0.4),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: FloatingBottomBar(
        items: [
          BottomElevenItem(
            label: 'Home',
            icon: Icons.home,
          ),
          BottomElevenItem(
            label: 'Task',
            icon: Icons.trending_up,
          ),
          BottomElevenItem(
            label: 'Settings',
            icon: Icons.search,
          ),
        ],
      ),
    );
  }
}

class ColorCardWidget extends StatelessWidget {
  const ColorCardWidget({
    Key? key,
    this.height = 100,
    required this.color,
    this.child,
  }) : super(key: key);

  final double height;
  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: context.appSizes.space20),
        SizedBox(
          height: height,
          width: double.maxFinite,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: color,
              borderRadius: context.appSizes.borderRadius25,
            ),
            child: child,
          ),
        ),
      ],
    );
  }
}

class NewTaskCard extends StatelessWidget {
  const NewTaskCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColorCardWidget(
      height: 300,
      color: context.appColors.blue.withOpacity(0.5),
      child: Padding(
        padding: context.appSizes.margin12,
        child: Column(
          children: [
            Text(
              'Do you have something new for today?',
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 18,
                  ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ImageNewTask(
                        asset: context.apAssets.workImg,
                      ),
                      ImageNewTask(
                        asset: context.apAssets.foodImg,
                      ),
                      ImageNewTask(
                        asset: context.apAssets.gamesImg,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ImageNewTask(
                        asset: context.apAssets.petImg,
                      ),
                      ImageNewTask(
                        asset: context.apAssets.coffeeImg,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageNewTask extends StatelessWidget {
  const ImageNewTask({
    Key? key,
    required this.asset,
  }) : super(key: key);

  final String asset;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.appColors.white,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: context.appSizes.margin16,
          child: Image.asset(asset),
        ),
      ),
    );
  }
}
