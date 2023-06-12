import 'package:flutter/material.dart';

class PostLayout extends StatefulWidget {
  const PostLayout({super.key});

  @override
  State<PostLayout> createState() => _PostLayoutState();
}

class _PostLayoutState extends State<PostLayout> {
  List<String> posts = [
    'post1',
    'post2',
    'post3',
    'post4',
    'post5',
    'post6',
    'post7',
    'post8',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: ((context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 10,
          ),
          child: Container(
            height: 500,
            color: Colors.red,
          ),
        );
      }),
    );
  }
}
