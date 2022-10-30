import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/app/widgets/bottom_bar/bottom_bar.dart';
import 'package:flutter_mood_diary/app/widgets/color_card.dart';
import 'package:flutter_mood_diary/config/context_extension.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                height: 100,
                color: context.appColors.green.withOpacity(0.7),
              ),
              ColorCardWidget(
                height: 100,
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

class NewTaskCard extends StatelessWidget {
  const NewTaskCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColorCardWidget(
      height: 280,
      color: context.appColors.blue.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          children: [
            Text(
              'Do you have something  for today?',
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 18,
                  ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                    child: Row(
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
                  ),
                  SizedBox(
                    height: 70,
                    child: Row(
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
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(left: 10, top: 20, right: 10),
                    decoration: BoxDecoration(
                      color: context.appColors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: TextField(
                              autofocus: false,
                              style: TextStyle(
                                fontSize: 15.0,
                                color: context.appColors.black,
                              ),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: context.appColors.white,
                                hintText: 'New task',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Container(
                            width: 45,
                            height: 45,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: context.appColors.black,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: FaIcon(
                                FontAwesomeIcons.plus,
                                color: context.appColors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
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
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.appColors.white,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Image.asset(asset),
      ),
    );
  }
}
