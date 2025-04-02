import 'package:cwt_ecommerce_app/features/shop/cart2/cart2.dart';
import 'package:cwt_ecommerce_app/features/shop/screens/category/category.dart';
import 'package:cwt_ecommerce_app/utils/constants/colors.dart';
import 'package:cwt_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/personalization/screens/setting/settings.dart';
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
        () =>
        controller.selectedMenu.value == 5 // Cart2 index
            ? const SizedBox.shrink()
            : NavigationBar(
          height: 80,
          animationDuration: const Duration(seconds: 3),
          selectedIndex: controller.selectedMenu.value,
          backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : Colors.white,
          elevation: 0,
          indicatorColor: THelperFunctions.isDarkMode(context) ? TColors.white.withOpacity(0.1) : TColors.black.withOpacity(0.1),
          onDestinationSelected: (index) => controller.selectedMenu.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home2'),

            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Cate'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Cate2'),

            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Cart 1'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Cart 2'),

            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedMenu.value]),
    );
  }
}

class AppScreenController extends GetxController {
  static AppScreenController get instance => Get.find();

  final Rx<int> selectedMenu = 0.obs;

  final screens = [

    const HomeScreen(),
    HomeScreen2(),
   const StoreScreen(),
    CategoryScreen(),
    const FavouriteScreen(),
     Cart2(),
    const SettingsScreen()];
}
