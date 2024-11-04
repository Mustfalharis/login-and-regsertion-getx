


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:weathe/controller/onBoradingController.dart';

class Onborading extends GetView<OnBoradingController> {
   Onborading({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var  controller = Get.put((OnBoradingController()));
    return  Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 300,),
          Row(
            children: [
              const SizedBox(width: 100,),
              InkWell(
                onTap: (){
                  controller.increment();
                },
                child:  Container(
                  height: 100,
                  width: 100,
                  child: Text(
                      "add"
                  ),
                ),
              ),
              Obx(()
              {
                return Text(
                  controller.count.toString(),
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                  ),
                );
              }),
              InkWell(
                onTap: (){
                  controller.decrement();
                },
                child: Container(
                  height: 100,
                  width: 100,
                  child: const Text(
                      "sub"
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
