import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
/*
The Controller class extends GetxController and defines the count
variable, which is a reactive variable. The increment() method is called when
the floating action button is pressed, and it increments the value of count.
 */
//Get has two different state managers: the simple state manager (we'll call it
//GetBuilder) and the reactive state manager (GetX/Obx)
class Controller extends GetxController {
  var count = 0.obs;//observable
  void increment() {
    count++;
    //update(); //updates GetBuilder UI
  }
}

class Controller2 extends GetxController {
  var count = 0.obs;//observable
  void increment() {
    count++;
    //update(); //updates GetBuilder UI
  }
}

class Controller3 extends GetxController {
  var count = 0.obs;//observable
  void increment() {
    count++;
    //update(); //updates GetBuilder UI
  }
}