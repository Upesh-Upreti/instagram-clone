import 'package:flutter/material.dart';
import 'package:instagram_clone/provider/data_provider.dart';
import 'package:instagram_clone/widgets/search_screen_widget/search_box.dart';
import 'package:instagram_clone/widgets/search_screen_widget/search_suggestion.dart';
import 'package:provider/provider.dart';

import '../models/data.dart';
import '../services/web_services.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SearchBox(),
          const SizedBox(
            height: 7,
          ),
          Expanded(
            child: Consumer<DataProvider>(
              builder: (context, dataProvider, child) =>
                  SearchSuggestion(suggestions: dataProvider.data),
            ),
          ),
        ],
      ),
    );
  }
}
