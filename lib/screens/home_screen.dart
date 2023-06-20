import 'package:flutter/material.dart';
import '../models/data.dart';
import '../services/web_services.dart';
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
  bool isLoaded = false;
  List<Data>? data;

  void getData() async {
    data = await WebServices.getData();
    if (data != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Visibility(
        visible: isLoaded,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              child: StoryLayout(
                stories: data ??
                    [
                      Data(
                        id: 1,
                        title: 'Captain America',
                        description: 'Whatever it takes',
                        likes: 134,
                        imageUrl:
                            'https://cdn.britannica.com/30/182830-050-96F2ED76/Chris-Evans-title-character-Joe-Johnston-Captain.jpg',
                      )
                    ],
              ),
            ),
            Expanded(
              child: PostLayout(
                  posts: data ??
                      [
                        Data(
                          id: 1,
                          title: 'Captain America',
                          description: 'Whatever it takes',
                          likes: 134,
                          imageUrl:
                              'https://cdn.britannica.com/30/182830-050-96F2ED76/Chris-Evans-title-character-Joe-Johnston-Captain.jpg',
                        )
                      ]),
            )
          ],
        ),
      ),
    );
  }
}
