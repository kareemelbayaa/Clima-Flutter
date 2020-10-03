import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  var url;

  NetworkHelper(this.url);

  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      print('getData()->$decodedData');
      return decodedData;
    } else {
      //print the error code
      print('getData()->Exception');
      print(response.statusCode);
    }
  }
}
