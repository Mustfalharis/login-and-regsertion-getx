

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../controller/login_controller.dart';
import 'package:get/get.dart';
class LoginView extends StatelessWidget {
   const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(LoginController());
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100,),
           TextFormField(
             controller: controller.emailController,
             decoration: const InputDecoration(
               hintText: "Enter Email "
             ),
           ),
            const SizedBox(height: 50,),
            TextFormField(
              controller: controller.passwordController,
              decoration: const InputDecoration(
                  hintText: "Enter password "
              ),
            ),
            const SizedBox(height: 50,),
            ElevatedButton(
                onPressed: () {
                 controller.login(context);
                },
                child:const Text("login"),
            ),
            const SizedBox(height: 50,),
            ElevatedButton(
              onPressed: () {
               controller.goToRegister(context);
              },
              child:const Text("Register"),
            ),

        
          ],
        ),
      ),
    );
  }
}
