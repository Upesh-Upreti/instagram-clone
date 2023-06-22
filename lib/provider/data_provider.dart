import 'package:flutter/material.dart';
import 'package:instagram_clone/services/web_services.dart';

import '../models/data.dart';

class DataProvider extends ChangeNotifier {
  bool isLoaded = false;

  List<Data> data = [];

  void getData() async {
    var webData = await WebServices.getData();

    if (webData != null) {
      data = [...webData];
      isLoaded = true;
      notifyListeners();
      return;
    }
    data.add(
      Data(
        id: 1,
        title: 'Captain America',
        description: 'Whatever it takes',
        likes: 1234,
        imageUrl:
            'https://cdn.britannica.com/30/182830-050-96F2ED76/Chris-Evans-title-character-Joe-Johnston-Captain.jpg',
      ),
    );
    isLoaded = true;
    notifyListeners();
    return;
  }

  void reloadData() {
    isLoaded = false;
    notifyListeners();
    getData();
  }
}
