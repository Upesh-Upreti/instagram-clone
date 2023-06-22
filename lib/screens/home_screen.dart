import 'package:flutter/material.dart';
import 'package:instagram_clone/provider/data_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/home_widgets/post_layout.dart';
import '../widgets/home_widgets/story_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<DataProvider>(
        builder: (context, dataProvider, child) => Column(
          children: [
            Container(
              height: 100,
              child: StoryLayout(stories: dataProvider.data),
            ),
            Expanded(
              child: PostLayout(posts: dataProvider.data),
            )
          ],
        ),
      ),
    );
  }
}
