import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/search_screen_widget/search_box.dart';
import 'package:instagram_clone/widgets/search_screen_widget/search_suggestion.dart';

import '../models/data.dart';
import '../services/web_services.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isLoaded = false;
  List<Data>? suggestions;

  void getData() async {
    suggestions = await WebServices.getData();

    if (suggestions != null) {
      setState(() {
        isLoaded = true;
      });
      return;
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

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
            child: Visibility(
              visible: isLoaded,
              replacement: const Center(
                child: CircularProgressIndicator(),
              ),
              child: SearchSuggestion(
                suggestions: suggestions ??
                    [
                      Data(
                        id: 1,
                        title: 'Captain America',
                        description: 'Whatever it takes',
                        likes: 134,
                        imageUrl:
                            'https://cdn.britannica.com/30/182830-050-96F2ED76/Chris-Evans-title-character-Joe-Johnston-Captain.jpg',
                      )
                    ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
