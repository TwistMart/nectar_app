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
import 'package:grocer_test/pages/widgets/dimensions.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
 

 

  int _unselectedIndex = 0;

  // You can navigate through the page on Splascreen click 'Get started', SplashPage click 'Continue with google or facebook', on ExplorePage click the conatiner with image and the name 

  List pages = [
    SplashScreen(), 
    HomePage(),
    CartPage(),    
    FavouritePage(),
    ProfilePage()  
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
        selectedFontSize: Dimensions.font15,
        unselectedFontSize: Dimensions.font15,
        
        // fixedColor: Colors.white,
        iconSize: Dimensions.icon30,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.buttonColor,  
         
        unselectedItemColor: Colors.black,     
        onTap: OnTap,
        items: [
          BottomNavigationBarItem(
            icon: AppIcon(icon: Icons.shopping_bag_rounded, iconColor: Colors.black),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: AppIcon(icon: Icons.search_outlined, iconColor: Colors.black),


            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: AppIcon(icon: Icons.local_grocery_store_sharp, iconColor: Colors.black),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: AppIcon(icon: Icons.heart_broken, iconColor: Colors.black),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(           
            
           icon: AppIcon(icon: Icons.person, iconColor: Colors.black, ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
