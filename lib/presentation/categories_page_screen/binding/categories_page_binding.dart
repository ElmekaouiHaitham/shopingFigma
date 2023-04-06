import '../controller/categories_page_controller.dart';
import 'package:get/get.dart';

class CategoriesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoriesPageController());
  }
}
