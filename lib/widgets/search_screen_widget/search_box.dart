import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 7,
        vertical: 5,
      ),
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 235, 231, 231),
            borderRadius: BorderRadius.circular(8)),
        child: const Row(
          children: [
            Icon(
              Icons.search,
              color: Color.fromARGB(221, 44, 44, 44),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Search',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(221, 44, 44, 44),
              ),
            ),
          ],
        ),
      ),
    );
    // Container(
    //   padding: EdgeInsets.all(6),
    //   decoration: BoxDecoration(
    //       color: const Color.fromARGB(255, 189, 182, 182),
    //       borderRadius: BorderRadius.circular(8)),
    //   child: Row(
    //     children: [
    //       Icon(Icons.search),
    //       // TextField(),
    //     ],
    //   ),
    // );
  }
}
