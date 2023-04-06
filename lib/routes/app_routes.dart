import 'package:haitham_elmekaoui_s_application3/presentation/login_screen/login_screen.dart';
import 'package:haitham_elmekaoui_s_application3/presentation/login_screen/binding/login_binding.dart';
import 'package:haitham_elmekaoui_s_application3/presentation/categories_page_screen/categories_page_screen.dart';
import 'package:haitham_elmekaoui_s_application3/presentation/categories_page_screen/binding/categories_page_binding.dart';
import 'package:haitham_elmekaoui_s_application3/presentation/checkout_page_screen/checkout_page_screen.dart';
import 'package:haitham_elmekaoui_s_application3/presentation/checkout_page_screen/binding/checkout_page_binding.dart';
import 'package:haitham_elmekaoui_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:haitham_elmekaoui_s_application3/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String categoriesPageScreen = '/categories_page_screen';

  static const String checkoutPageScreen = '/checkout_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: categoriesPageScreen,
      page: () => CategoriesPageScreen(),
      bindings: [
        CategoriesPageBinding(),
      ],
    ),
    GetPage(
      name: checkoutPageScreen,
      page: () => CheckoutPageScreen(),
      bindings: [
        CheckoutPageBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    )
  ];
}
