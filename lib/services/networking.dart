import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    print('before http.get');
    http.Response response = await http.get(
      Uri.parse(url),
    );
    print('after http.get');

    if (response.statusCode == 200) {
      print('data is here all good');
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
