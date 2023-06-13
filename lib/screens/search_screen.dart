import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/search_screen_widget/search_box.dart';
import 'package:instagram_clone/widgets/search_screen_widget/search_suggestion.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SearchBox(),
          SizedBox(
            height: 7,
          ),
          Expanded(
            child: SearchSuggestion(),
          ),
        ],
      ),
    );
  }
}
