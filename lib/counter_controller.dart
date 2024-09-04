import 'package:get/get.dart';

class Counter_Controller extends GetxController{

  var conter = 0.obs ;

  void increment(){
    conter++;
  }

  void decrement(){
    if(conter>0){
      conter--;
    }
  }

  void reset(){
    conter.value = 0;
  }
}