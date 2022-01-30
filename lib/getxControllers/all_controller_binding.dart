import '../getxControllers/home_controller.dart';
import '../getxControllers/my_controller.dart';
import 'package:get/get.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<MyController>(() => MyController());
  }
}
