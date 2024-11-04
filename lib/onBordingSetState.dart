import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller/onBoradingSetSatet.dart';

class Onbordingsetstate extends StatefulWidget {
   Onbordingsetstate({Key? key}) : super(key: key);

  @override
  State<Onbordingsetstate> createState() => _OnbordingsetstateState();
}

class _OnbordingsetstateState extends State<Onbordingsetstate> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    var  controller = Get.put((OnBoradingSetStateController()));
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 300,
          ),
          Row(
            children: [
              const SizedBox(
                width: 100,
              ),
              InkWell(
                onTap: () {
                // setState(() {
                //   count = count + 1;
                // });
                  controller.login(conter.text);
                //   controller.add();
                },
                child: Container(
                  height: 100,
                  width: 100,
                  child: Text("add"),
                ),
              ),
              Obx(()
              {
                return  Text(
                  controller.count.toString(),
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                  ),
                );
              }
              ),

              InkWell(
                onTap: () {
                   controller.sub();
                },
                child: Container(
                  height: 100,
                  width: 100,
                  child: const Text("sub"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
