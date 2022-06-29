import 'dart:convert';
import 'package:http/http.dart' as http;

class Apicall{
  String apilink = "https://jsonplaceholder.typicode.com/photos";

  Future<List> getData()async{
    Uri uri= Uri.parse(apilink);
    var res = await http.get(uri);

    var jsonData= jsonDecode(res.body);
    return jsonData;
  }
}