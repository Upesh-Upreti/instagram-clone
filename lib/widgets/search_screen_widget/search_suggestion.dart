import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_clone/utils/constants.dart';

class SearchSuggestion extends StatefulWidget {
  const SearchSuggestion({super.key});

  @override
  State<SearchSuggestion> createState() => _SearchSuggestionState();
}

class _SearchSuggestionState extends State<SearchSuggestion> {
  List<Widget> suggestions = [
    Image.asset(Constants.AVATAR_IMAGE),
    Image.asset('assets/images/tower.jpg'),
    Image.asset(Constants.AVATAR_IMAGE),
    Image.asset('assets/images/everest.jpg'),
    Image.asset(Constants.AVATAR_IMAGE),
    Image.asset(Constants.AVATAR_IMAGE),
    Image.asset(Constants.AVATAR_IMAGE),
    Image.asset('assets/images/tower.jpg'),
    Image.asset(Constants.AVATAR_IMAGE),
    Image.asset('assets/images/everest.jpg'),
    Image.asset(Constants.AVATAR_IMAGE),
    Image.asset('assets/images/tower.jpg'),
    Image.asset(Constants.AVATAR_IMAGE),
    Image.asset('assets/images/everest.jpg'),
    Image.asset(Constants.AVATAR_IMAGE),
    Image.asset('assets/images/everest.jpg'),
    Image.asset(Constants.AVATAR_IMAGE),
    Image.asset('assets/images/everest.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MasonryGridView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: suggestions[index],
            ),
          );
        },
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
      ),
    );
  }
}
