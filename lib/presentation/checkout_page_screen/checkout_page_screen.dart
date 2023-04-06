import '../checkout_page_screen/widgets/checkout_page_item_widget.dart';
import 'controller/checkout_page_controller.dart';
import 'models/checkout_page_item_model.dart';
import 'package:flutter/material.dart';
import 'package:haitham_elmekaoui_s_application3/core/app_export.dart';
import 'package:haitham_elmekaoui_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:haitham_elmekaoui_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:haitham_elmekaoui_s_application3/widgets/custom_button.dart';

class CheckoutPageScreen extends GetWidget<CheckoutPageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 16, bottom: 16),
                    onTap: onTapArrowleft1),
                centerTitle: true,
                title: Text("lbl_cart".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium18),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgSearch,
                      margin:
                          getMargin(left: 24, top: 16, right: 24, bottom: 16))
                ],
                styleType: Style.bgFillGray50),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(all: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(() => ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(16));
                          },
                          itemCount: controller.checkoutPageModelObj.value
                              .checkoutPageItemList.length,
                          itemBuilder: (context, index) {
                            CheckoutPageItemModel model = controller
                                .checkoutPageModelObj
                                .value
                                .checkoutPageItemList[index];
                            return CheckoutPageItemWidget(model);
                          })),
                      Spacer(),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: getPadding(bottom: 1),
                                child: Text("lbl_subtotal".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSpartanMedium16)),
                            Padding(
                                padding: getPadding(top: 1),
                                child: Text("lbl_rs_6_027_00".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSpartanMedium16))
                          ]),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_shipping".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSpartanMedium16),
                                Padding(
                                    padding: getPadding(top: 1, bottom: 5),
                                    child: Text("lbl_rs_100_00".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSpartanMedium16))
                              ])),
                      Padding(
                          padding: getPadding(top: 21, bottom: 9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1, bottom: 1),
                                    child: Text("lbl_total_price".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSpartanMedium16Black900)),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 5, bottom: 1),
                                    child: Text("lbl_3_items".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSpartanMedium12Black9007e)),
                                Padding(
                                    padding: getPadding(left: 14),
                                    child: Text("lbl_rs_6_127_00".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSpartanMedium18))
                              ]))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(64),
                text: "lbl_checkout".tr,
                margin: getMargin(left: 24, right: 24, bottom: 24))));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
