

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weathe/core/Api.dart';
import 'package:weathe/core/link_api.dart';
import '../core/snackbar.dart';
import '../main.dart';
import '../view/home_view.dart';
class RegisterController extends GetxController
{
  Api api = Api();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void register(context)async{
    var body = await api.postRequest(
      LinkApi.register,
      {
        "name":nameController.text,
        "email":emailController.text,
        "password":passwordController.text,

      },
    );
    if(body["status"]==true)
    {
      gotoHome(context);
      sharedPreferences.setString("auth", body["data"]["token"]);
    }
    else {
      snackBar(body["Message"]);
    }
  }

  void gotoHome(context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  HomeView()),
    );
  }



}