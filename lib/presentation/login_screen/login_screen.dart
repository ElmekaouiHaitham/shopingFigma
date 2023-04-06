import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:haitham_elmekaoui_s_application3/core/app_export.dart';
import 'package:haitham_elmekaoui_s_application3/core/utils/validation_functions.dart';
import 'package:haitham_elmekaoui_s_application3/widgets/custom_button.dart';
import 'package:haitham_elmekaoui_s_application3/widgets/custom_text_form_field.dart';
import 'package:haitham_elmekaoui_s_application3/domain/facebookauth/facebook_auth_helper.dart';
import 'package:haitham_elmekaoui_s_application3/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 24, top: 36, right: 24, bottom: 36),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: getSize(76),
                              padding: getPadding(
                                  left: 25, top: 16, right: 25, bottom: 16),
                              decoration: AppDecoration.txtPrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.txtCircleBorder38),
                              child: Text("lbl_e".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSpartanSemiBold38)),
                          Spacer(),
                          Text("lbl_login_to_e_shop".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSpartanSemiBold20),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.groupFiveController,
                              hintText: "lbl_username".tr,
                              margin: getMargin(top: 43),
                              prefix: Container(
                                  margin: getMargin(
                                      left: 24, top: 20, right: 16, bottom: 20),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgUser)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(64)),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.groupSixController,
                              hintText: "lbl_password".tr,
                              margin: getMargin(top: 24),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 24, top: 20, right: 16, bottom: 20),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(64)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: true),
                          Padding(
                              padding: getPadding(top: 26),
                              child: Text("msg_forgot_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSpartanMedium14)),
                          CustomButton(
                              height: getVerticalSize(64),
                              text: "lbl_login".tr,
                              margin: getMargin(top: 27)),
                          Padding(
                              padding: getPadding(top: 25),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 8, bottom: 6),
                                        child: SizedBox(
                                            width: getHorizontalSize(164),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.gray400))),
                                    Text("lbl_or".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtSpartanMedium14Gray400),
                                    Padding(
                                        padding: getPadding(top: 8, bottom: 6),
                                        child: SizedBox(
                                            width: getHorizontalSize(164),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.gray400)))
                                  ])),
                          Padding(
                              padding: getPadding(top: 28, bottom: 54),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgFacebook,
                                        height: getSize(42),
                                        width: getSize(42),
                                        margin: getMargin(bottom: 1),
                                        onTap: () {
                                          onTapImgFacebook();
                                        }),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgGoogle,
                                        height: getSize(42),
                                        width: getSize(42),
                                        margin: getMargin(left: 24, bottom: 1),
                                        onTap: () {
                                          onTapImgGoogle();
                                        }),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgEye,
                                        height: getSize(42),
                                        width: getSize(42),
                                        margin: getMargin(left: 24, top: 1))
                                  ]))
                        ]))),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 88, right: 89, bottom: 38),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(
                      padding: getPadding(bottom: 1),
                      child: Text("msg_don_t_have_an_account".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSpartanMedium14Black9007e)),
                  Padding(
                      padding: getPadding(left: 2, top: 1),
                      child: Text("lbl_sign_up".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSpartanMedium14Deeporange500))
                ]))));
  }

  onTapImgFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapImgGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
