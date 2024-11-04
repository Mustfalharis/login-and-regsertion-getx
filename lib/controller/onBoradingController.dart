



import 'package:get/get.dart';

class OnBoradingController extends GetxController {
  /// final don't change value
  var  count = 0.obs;
  void increment(){
    count = count + 1;
    print(count);
  }

  void decrement(){
    count = count - 1;
    print(count);
  }

}
