import 'package:cwt_ecommerce_app/features/shop/screens/cart/cart.dart';
import 'package:cwt_ecommerce_app/features/shop/screens/category/category.dart';
import 'package:cwt_ecommerce_app/features/shop/screens/reorder/reorder.dart';
import 'package:cwt_ecommerce_app/utils/constants/colors.dart';
import 'package:cwt_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/personalization/screens/setting/settings.dart';
import 'features/shop/screens/HomePage/homepage.dart';
import 'features/shop/screens/favourites/favourite.dart';
import 'features/shop/screens/home/home.dart';
import 'features/shop/screens/home2/home2.dart';
import 'features/shop/screens/store/store.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AppScreenController());
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Obx(
            () => controller.selectedMenu.value == 5
            ? const SizedBox.shrink()
            : NavigationBar(
          height: 80,
          selectedIndex: controller.selectedMenu.value,
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.black
              : Colors.white,
          elevation: 0,
          indicatorColor: Colors.transparent, // disable default indicator
          onDestinationSelected: (index) =>
          controller.selectedMenu.value = index,
          destinations: [
            buildCustomDestination(Icons.home_filled, 'Home', 0, controller),
            buildCustomDestination(Icons.shopping_bag_outlined, 'Order Again', 1, controller),
            buildCustomDestination(Icons.grid_view, 'Categories', 2, controller),
            buildCustomDestination(Icons.local_print_shop_outlined, 'Cart', 3, controller),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedMenu.value]),
    );
  }
  NavigationDestination buildCustomDestination(
      IconData icon, String label, int index, AppScreenController controller) {
    final isSelected = controller.selectedMenu.value == index;
   // var width = MediaQuery.of(context).size.width;

    return NavigationDestination(
      label: label,
      icon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 4,
            width: 34,
            decoration: BoxDecoration(
              color: isSelected ? Colors.green : Colors.transparent,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 4),
          Icon(
            icon,
            color: isSelected ? Colors.green : Colors.grey,
          ),
        ],
      ),
    );
  }

}

class AppScreenController extends GetxController {
  static AppScreenController get instance => Get.find();

  final Rx<int> selectedMenu = 0.obs;

  final screens = [

    HomePage(),
    Reorder(),
    CategoryScreen(),
    CartScreen()
  ];

}
