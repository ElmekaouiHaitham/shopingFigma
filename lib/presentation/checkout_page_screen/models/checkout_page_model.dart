import 'package:get/get.dart';
import 'checkout_page_item_model.dart';

class CheckoutPageModel {
  RxList<CheckoutPageItemModel> checkoutPageItemList =
      RxList.generate(3, (index) => CheckoutPageItemModel());
}
