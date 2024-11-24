
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weathe/controller/home_controller.dart';
import 'package:weathe/core/Api.dart';
class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}
class _HomeViewState extends State<HomeView> {
   var body;
   bool isLoading=false;
  @override
  void initState(){
    super.initState();
    fetchData();
  }
  void fetchData() async {
    Api api = Api();
    body=await api.getRequest("https://jsonplaceholder.typicode.com/todos");
    setState(() {
      isLoading=true;
    });
  }
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
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        children: [
          isLoading==true?
          Text(body[0]["id"].toString())
          :Text("loading....."),

        ],
      ),
    );
  }
}

