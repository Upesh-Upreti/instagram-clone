import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/home_widgets/my_story.dart';
import 'package:instagram_clone/widgets/home_widgets/story_items.dart';

class StoryLayout extends StatefulWidget {
  const StoryLayout({super.key});

  @override
  State<StoryLayout> createState() => _StoryLayoutState();
}

class _StoryLayoutState extends State<StoryLayout> {
  List<String> stories = [
    'story1',
    'story2',
    'story3',
    'story4',
    'story5',
    'story6',
    'story7',
    'story8',
    'story9',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        itemBuilder: (context, index) {
          return index == 0
              ? MyStory()
              : Padding(
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    height: 150,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.red,
                                  Colors.orange,
                                  Colors.pink,
                                  Colors.blue,
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: StoryItem(),
                          ),
                        ),
                        Text(
                          stories[index],
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                );
        });
  }
}
