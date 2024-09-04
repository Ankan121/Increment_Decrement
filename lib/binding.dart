import 'package:get/get.dart';
import 'package:task/counter_controller.dart';

class Controller_Bin extends Bindings{
  @override
  void dependencies() {
    Get.put<Counter_Controller>(Counter_Controller());
  }

}