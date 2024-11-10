import 'dart:convert';
import 'package:http/http.dart' as http;
class Api{
  Future getRequest(String url)async
  {
    var response = await http.get(Uri.parse(url));
    if(response.statusCode == 200)
    {
      var body = jsonDecode(response.body);
      return body;
    }
    else {
      print("wrong server");
    }
  }
  Future postRequest(String url,Map body)async{
    var response =  await  http.post(
        Uri.parse(url),
        body: body
    );
    if(response.statusCode==200)
    {
      var body = jsonDecode(response.body);
      return body;
    }
    else {
      print("wrong server");
    }
  }
}