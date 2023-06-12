import 'package:flutter/material.dart';

class StoryItem extends StatefulWidget {
  const StoryItem({super.key, required this.title});
  final String title;
  @override
  State<StoryItem> createState() => _StoryItemState();
}

class _StoryItemState extends State<StoryItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/Captain_America.png'),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              widget.title,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
