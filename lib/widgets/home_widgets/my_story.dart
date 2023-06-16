import 'package:flutter/material.dart';

class MyStory extends StatefulWidget {
  const MyStory({super.key});

  @override
  State<MyStory> createState() => _MyStoryState();
}

class _MyStoryState extends State<MyStory> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  height: 80,
                  width: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image:
                              AssetImage('assets/images/Captain_America.png'),
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
              const Text(
                'Your Story',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 17,
          left: 41,
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 15,
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
