import 'package:get/get.dart';
import 'package:getx/controller.dart';

class SampleBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Controller>(() => Controller());
    Get.lazyPut<Controller2>(() => Controller2());
    Get.lazyPut<Controller3>(() => Controller3());
  }
}