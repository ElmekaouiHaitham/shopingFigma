import '../controller/checkout_page_controller.dart';
import 'package:get/get.dart';

class CheckoutPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckoutPageController());
  }
}
