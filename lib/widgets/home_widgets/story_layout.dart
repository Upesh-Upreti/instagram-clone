import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/home_widgets/my_story.dart';
import 'package:instagram_clone/widgets/home_widgets/story_items.dart';

import '../../models/data.dart';

class StoryLayout extends StatefulWidget {
  const StoryLayout({
    super.key,
    required this.stories,
  });
  final List<Data> stories;

  @override
  State<StoryLayout> createState() => _StoryLayoutState();
}

class _StoryLayoutState extends State<StoryLayout> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.stories.length,
        itemBuilder: (context, index) {
          return index == 0
              ? const MyStory()
              : StoryItem(
                  title: 'story$index',
                  imageUrl: widget.stories[index].imageUrl,
                );
        });
  }
}
