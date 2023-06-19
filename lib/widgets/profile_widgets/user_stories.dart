import 'package:flutter/material.dart';

class UserStories extends StatefulWidget {
  const UserStories({super.key});

  @override
  State<UserStories> createState() => _UserStoriesState();
}

class _UserStoriesState extends State<UserStories> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return index == 0
                  ? const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 7,
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.add_circle_outline_outlined,
                            size: 50,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('New story'),
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey[300],
                      ),
                    );
            },
          ),
        )
      ],
    );
  }
}
