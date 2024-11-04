import 'package:get/get.dart';
import '../core/api.dart';
class OnBoradingSetStateController extends GetxController {

  Api api = Api();
  void login(String name){
    api.postRequest("login", {
      "name":name
    });
  }
  // var count = 0.obs;
  //
  // void add(){
  //   count = count + 1;
  // }
  //
  // void sub(){
  //   count = count - 1;
  // }

}