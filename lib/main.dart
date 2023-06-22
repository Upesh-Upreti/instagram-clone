import 'package:flutter/material.dart';
import 'package:instagram_clone/provider/data_provider.dart';
import 'package:instagram_clone/screens/base_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DataProvider(),
        )
      ],
      child: const MaterialApp(
        home: BaseScreen(),
      ),
    ),
  );
}
