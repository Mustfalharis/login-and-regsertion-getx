import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weathe/controller/home_controller.dart';
import '../widget/dis/custom_text_list.dart';
import '../widget/home/custom_chose_user.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String>list=["ToDo","InPreqes","InRriew","Done"];
  int isCurrent = 0 ;
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
         SizedBox(height: 100,),
         Container(
           margin: EdgeInsets.symmetric(horizontal: 16),
           height: 60,
           width: double.infinity,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(30),
             color: Colors.grey,
           ),
           child:  Row(
             children: [
               SizedBox(width: 30,),
               // ...List.generate(4, (index) {
               //   return InkWell(
               //     onTap: (){
               //       setState(() {
               //        isCurrent=index;
               //       });
               //     },
               //     child: CustomTextList(
               //       title: list[index],
               //        isActive: index==isCurrent?true:false,
               //     ),
               //   );
               //   },
               // ),
               // ...List.generate(4,
               // (i) {
               //   return InkWell(
               //     onTap: (){
               //     setState(() {
               //       isCurrent = i;
               //     });
               //     },
               //     child: CustomTextList(
               //         title: list[i],
               //         isActive: i==isCurrent?true:false
               //     ),
               //   );
               // },
               // ),
               SizedBox(
                 height: 100,
                 child: ListView.separated(
                     itemBuilder: (context, index) {
                       return CustomTextList(
                           title: list[index],
                           isActive: index==isCurrent?true:false
                       );
                     },
                     separatorBuilder: (context, index) {
                       return Container();
                     },
                     itemCount: 4
                 ),
               ),
             ],
           ),
         ),
    ],
    )
    );
  }
}
