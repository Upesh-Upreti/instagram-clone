import 'package:flutter/material.dart';

import '../widgets/reels.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({super.key});

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: const [
          Reels(videoId: 'piano'),
          Reels(videoId: 'captain'),
          Reels(videoId: 'piano'),
          Reels(videoId: 'captain'),
          Reels(videoId: 'piano'),
          Reels(videoId: 'captain'),
          Reels(videoId: 'piano'),
        ],
      ),
    );
  }
}
