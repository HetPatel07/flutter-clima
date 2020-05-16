import 'dart:convert';
import 'package:http/http.dart';

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future getData() async {
    Response res = await get(url);
    if (res.statusCode == 200) {
      var data = res.body;
      return jsonDecode(data);
    } else {
      print(res.statusCode);
    }
  }
}
