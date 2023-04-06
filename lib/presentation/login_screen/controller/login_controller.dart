import 'package:haitham_elmekaoui_s_application3/core/app_export.dart';
import 'package:haitham_elmekaoui_s_application3/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController groupFiveController = TextEditingController();

  TextEditingController groupSixController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(AppRoutes.categoriesPageScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
    groupFiveController.dispose();
    groupSixController.dispose();
  }
}
