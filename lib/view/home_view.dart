


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weathe/controller/home_controller.dart';
import 'package:weathe/main.dart';
import 'package:weathe/view/login_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   var controller =  Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){
              controller.logout(context);
            },
              icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 200,),
          Text("Home"),
        ],
      ),
    );
  }
}
