

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weathe/view/home_view.dart';
import 'package:weathe/view/login_view.dart';

import 'core/Api.dart';

late  SharedPreferences sharedPreferences;
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      home: sharedPreferences.get("auth")==null?
          LoginView():
          HomeView(),
    );
  }
}

// if(sharedPreferences.get("auth")==null){
//   Gologin();
// }else {
//
// }
