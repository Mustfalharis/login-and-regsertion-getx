import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weathe/controller/home_controller.dart';
import '../widget/home/custom_chose_user.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool icActive = true;

  int isCurrent=0;

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              controller.logout(context);
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          ...List.generate(
            2,
            (index) => CustomChoseUser(
                title:"client",
                des: "I’m a freelancer ready to work for projects",
                icon: Icons.person,
                isActive: index==isCurrent?true:false,
                onTap: (){
                  setState(() {
                    isCurrent=index;
                  });
                },
            ),
          ),
        ],
      ),
    );
  }
}
