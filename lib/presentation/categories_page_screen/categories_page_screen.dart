import 'controller/categories_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:haitham_elmekaoui_s_application3/core/app_export.dart';
import 'package:haitham_elmekaoui_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:haitham_elmekaoui_s_application3/widgets/app_bar/custom_app_bar.dart';

class CategoriesPageScreen extends GetWidget<CategoriesPageController> {
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
                    onTap: onTapArrowleft),
                centerTitle: true,
                title: Text("lbl_categories".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSpartanMedium18),
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
                padding: getPadding(top: 11, bottom: 11),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(right: 52),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_men".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsMedium14),
                                          Padding(
                                              padding: getPadding(top: 9),
                                              child: SizedBox(
                                                  width: getHorizontalSize(138),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(3),
                                                      thickness:
                                                          getVerticalSize(3),
                                                      color: ColorConstant
                                                          .deepOrange500)))
                                        ]),
                                    Padding(
                                        padding:
                                            getPadding(left: 40, bottom: 16),
                                        child: Text("lbl_women".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtSpartanMedium14)),
                                    Spacer(),
                                    Padding(
                                        padding: getPadding(bottom: 16),
                                        child: Text("lbl_kids".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtSpartanMedium14))
                                  ]))),
                      Container(
                          height: getVerticalSize(144),
                          width: getHorizontalSize(366),
                          margin: getMargin(top: 24),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    decoration: AppDecoration.primary.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgMaskgroup,
                                              height: getVerticalSize(144),
                                              width: getHorizontalSize(366),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(16)))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: getPadding(left: 33, bottom: 17),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_season_sale".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtPoppinsBold30),
                                          Text("lbl_up_to_25_off".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtSpartanBold22),
                                          Padding(
                                              padding: getPadding(top: 20),
                                              child: Text(
                                                  "msg_terms_conditions".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSpartanMedium10))
                                        ])))
                          ])),
                      Padding(
                          padding: getPadding(left: 86, top: 64, right: 81),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgTrophy,
                                              height: getVerticalSize(50),
                                              width: getHorizontalSize(49),
                                              alignment: Alignment.center),
                                          Padding(
                                              padding: getPadding(top: 9),
                                              child: Text("lbl_tshirt".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSpartanSemiBold16))
                                        ])),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgAirplane,
                                          height: getVerticalSize(53),
                                          width: getHorizontalSize(42)),
                                      Padding(
                                          padding: getPadding(top: 7),
                                          child: Text("lbl_hoodie".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtSpartanSemiBold16))
                                    ])
                              ])),
                      Spacer(),
                      Padding(
                          padding: getPadding(left: 84, right: 85, bottom: 50),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgHome,
                                          height: getVerticalSize(50),
                                          width: getHorizontalSize(32)),
                                      Padding(
                                          padding: getPadding(top: 9),
                                          child: Text("lbl_jeans".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtSpartanSemiBold16))
                                    ]),
                                Padding(
                                    padding: getPadding(top: 7),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgFile,
                                              height: getVerticalSize(36),
                                              width: getHorizontalSize(49)),
                                          Padding(
                                              padding: getPadding(top: 16),
                                              child: Text("lbl_shorts".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSpartanSemiBold16))
                                        ]))
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 24, right: 24, bottom: 32),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      padding:
                          getPadding(left: 54, top: 39, right: 54, bottom: 39),
                      decoration: AppDecoration.outlineBluegray9000c.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCar,
                                height: getVerticalSize(49),
                                width: getHorizontalSize(54),
                                margin: getMargin(top: 2)),
                            Padding(
                                padding: getPadding(top: 8),
                                child: Text("lbl_sweater".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold16))
                          ])),
                  Container(
                      margin: getMargin(left: 16),
                      padding:
                          getPadding(left: 58, top: 39, right: 58, bottom: 39),
                      decoration: AppDecoration.outlineBluegray9000c.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgClock,
                                height: getVerticalSize(48),
                                width: getHorizontalSize(25),
                                margin: getMargin(left: 15, top: 2)),
                            Padding(
                                padding: getPadding(top: 9),
                                child: Text("lbl_tracks".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold16))
                          ]))
                ]))));
  }

  onTapArrowleft() {
    Get.back();
  }
}
