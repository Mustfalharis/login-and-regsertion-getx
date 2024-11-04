
import 'dart:convert';
import 'package:http/http.dart' as http;
class Api     {
  String name ="dafdf" ;
 Future getRequest(String city)async
  {
   var response = await http.get(Uri.parse(""
       "https://api.openweathermap.org/data/2.5/weather?q=baghdad&appid=b9235f96a09fe90cc16802fde2a20a4e"));
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