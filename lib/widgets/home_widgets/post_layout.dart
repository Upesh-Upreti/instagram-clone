import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/constants.dart';

import '../../models/data.dart';

class PostLayout extends StatefulWidget {
  const PostLayout({
    super.key,
    required this.posts,
  });
  final List<Data> posts;

  @override
  State<PostLayout> createState() => _PostLayoutState();
}

class _PostLayoutState extends State<PostLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: widget.posts.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 5,
            ),
            child: Container(
              height: 580,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              NetworkImage(widget.posts[index].imageUrl),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.posts[index].title,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            print('menu pressed');
                          },
                          icon: Icon(Icons.more_vert),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Image.network(
                      widget.posts[index].imageUrl,
                      fit: BoxFit.cover,
                      height: 380,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.comment_outlined),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.share),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.save),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${(widget.posts[index].likes).toString()} Likes',
                      style: const TextStyle(fontSize: 12),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          widget.posts[index].title,
                          style: const TextStyle(fontSize: 14),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Flexible(
                          child: Text(
                            widget.posts[index].description,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "View all 128 comments",
                      style: TextStyle(fontSize: 12),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "3 hours ago",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
