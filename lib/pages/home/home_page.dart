import 'package:flutter/material.dart';
import 'package:grocer_test/pages/cart/cart_page.dart';
import 'package:grocer_test/pages/explore/explore_page.dart';
import 'package:grocer_test/pages/favourite/favourite_page.dart';
import 'package:grocer_test/pages/profile/profile_page.dart';
import 'package:grocer_test/pages/shop/shop_page.dart';
import 'package:grocer_test/pages/splash/splash_page.dart';
import 'package:grocer_test/pages/splash/splash_screen.dart';
import 'package:grocer_test/pages/widgets/app_icon.dart';
import 'package:grocer_test/pages/widgets/colors.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
 

 

  int _unselectedIndex = 0;

  List pages = [
    SplashPage(),
    SplashScreen(),
    ProfilePage(),
    HomePage(),
    FavouritePage(),

   
  ];

  OnTap(int index) {
    setState(() {
      _unselectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // use the list of pages to create the pages in the bottom navigation bar
      body: pages[_unselectedIndex], // Get.arguments is the index of the page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _unselectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.buttonColor,        
        onTap: OnTap,
        items: [
          BottomNavigationBarItem(
            icon: AppIcon(icon: Icons.shopping_bag_rounded),
            // activeIcon: AppIcon(icon: Icons.home),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: AppIcon(icon: Icons.search_outlined),


            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: AppIcon(icon: Icons.local_grocery_store_sharp),
            // activeIcon: AppIcon(icon: Icons.notifications),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: AppIcon(icon: Icons.heart_broken),
            // activeIcon: AppIcon(icon: Icons.person),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(


            
            
           icon: AppIcon(icon: Icons.person),
            // activeIcon: AppIcon(icon: Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
