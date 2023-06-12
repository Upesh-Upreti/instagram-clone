import 'package:flutter/material.dart';
import '../widgets/home_widgets/post_layout.dart';
import '../widgets/home_widgets/story_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          child: const StoryLayout(),
        ),
        const Expanded(
          child: PostLayout(),
        )
      ],
    );
  }
}
