

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weathe/core/link_api.dart';
import 'package:weathe/core/snackbar.dart';
import 'package:weathe/main.dart';

import '../core/Api.dart';
import '../view/home_view.dart';
import '../view/register_view.dart';

class LoginController extends GetxController
{
  Api api = Api();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void>login(context)async
  {
    var body = await api.postRequest(
        LinkApi.login,
        {
          "email":emailController.text,
          "password":passwordController.text,
        }
    );
    if(body["status"]==true)
    {
       goToHome(context);
       sharedPreferences.setString("auth", body["data"]["token"]);
      }
    else
    {
      snackBar(body["Message"]);
    }
  }

  void goToHome(context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  HomeView()),
    );
  }
  void goToRegister(context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  RegisterView()),
    );
  }


}