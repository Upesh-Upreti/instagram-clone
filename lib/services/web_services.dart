import 'package:instagram_clone/utils/constants.dart';

import '../models/data.dart';
import 'package:http/http.dart' as http;

class WebServices {
  static Future<List<Data>?> getData() async {
    var client = http.Client();
    var uri = Uri.parse(Constants.API_URL);
    var response = await client.get(uri);

    if (response.statusCode != 200) return null;

    var data = response.body;

    return dataFromJson(data);
  }
}
