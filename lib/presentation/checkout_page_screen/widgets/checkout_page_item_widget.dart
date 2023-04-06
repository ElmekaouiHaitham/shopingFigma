import '../controller/checkout_page_controller.dart';
import '../models/checkout_page_item_model.dart';
import 'package:flutter/material.dart';
import 'package:haitham_elmekaoui_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class CheckoutPageItemWidget extends StatelessWidget {
  CheckoutPageItemWidget(this.checkoutPageItemModelObj);

  CheckoutPageItemModel checkoutPageItemModelObj;

  var controller = Get.find<CheckoutPageController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 15,
        bottom: 15,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle16,
            height: getSize(
              100,
            ),
            width: getSize(
              100,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                12,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              bottom: 1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        110,
                      ),
                      child: Obx(
                        () => Text(
                          checkoutPageItemModelObj.olivezipfrontTxt.value,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSpartanMedium14Black900,
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgTrash,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        left: 83,
                        bottom: 16,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    top: 9,
                  ),
                  child: Obx(
                    () => Text(
                      checkoutPageItemModelObj.rsCounterTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSpartanMedium12,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 15,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgClockBlueGray100,
                        height: getSize(
                          20,
                        ),
                        width: getSize(
                          20,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 12,
                          bottom: 1,
                        ),
                        child: Text(
                          "lbl_1".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium12.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.1,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgAntdesignminu,
                        height: getSize(
                          20,
                        ),
                        width: getSize(
                          20,
                        ),
                        margin: getMargin(
                          left: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
