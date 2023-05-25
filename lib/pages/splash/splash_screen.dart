import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grocer_test/pages/splash/splash_page.dart';
import 'package:grocer_test/pages/widgets/colors.dart';
import 'package:get/get.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:grocer_test/pages/widgets/dimensions.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            // 'lib/images/grocery_man.jpg',
            'lib/images/Man-holding-pepper-and-shopping-bag.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black54,
          ),
          Container(
            padding: EdgeInsets.only(bottom: Dimensions.height30+Dimensions.height30),
            child: Column(
              children: [
                Spacer(flex: 1),
                Icon(
                  Icons.local_grocery_store_sharp,
                  color: Colors.white,
                  size: Dimensions.icon20*2,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                              text: 'Welcome\n',
                              style: TextStyle(
                                  fontFamily: 'Gilroy', fontSize: 30)),
                          TextSpan(
                              text: 'to our store',
                              style: TextStyle(
                                  fontFamily: 'Gilroy', fontSize: 30)),
                        ],
                      ),
                    ),
                    SizedBox(height: Dimensions.height15),
                    Text(
                      'Ger your groceries in as fast as one hour',
                      style: TextStyle(
                          fontSize: Dimensions.font12,
                          color: Colors.grey,
                          fontFamily: 'Gilroy-Medium'),
                    ),
                    SizedBox(height: Dimensions.height20),
                    Container(
                      // alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(
                        left: Dimensions.width10*Dimensions.width5,
                        right: Dimensions.width10*Dimensions.width5,
                      ),
                      height: Dimensions.height20+Dimensions.height25,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius10),
                          color: AppColors.buttonColor),
                      child: TextButton(
                        onPressed: () {
                          Get.to(() => SplashPage());
                          print( MediaQuery.of(context).size.height);
                          print(MediaQuery.of(context).size.width);

                        },
                        child: Center(
                          child: Text(
                            "Get started",
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Gilroy'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
