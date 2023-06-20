import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../models/data.dart';

class SearchSuggestion extends StatefulWidget {
  const SearchSuggestion({
    super.key,
    required this.suggestions,
  });
  final List<Data> suggestions;

  @override
  State<SearchSuggestion> createState() => _SearchSuggestionState();
}

class _SearchSuggestionState extends State<SearchSuggestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MasonryGridView.builder(
        itemCount: widget.suggestions.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(widget.suggestions[index].imageUrl),
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
