import 'package:flutter/material.dart';
import 'package:grocer_test/pages/splash/splash_page.dart';
import 'package:grocer_test/pages/widgets/colors.dart';
import 'package:get/get.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';


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
          Column(
            children: [
              Spacer( flex: 1),
              Icon(
                Icons.local_grocery_store_sharp,
                color: Colors.white,
                size: 30,
                
              ),

              Expanded(
                child: Column(
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
                      TextSpan(text: 'Welcome\n'),
                      TextSpan(text: 'to our store'),
                    ],
                  ),
                ),
                                    SizedBox(height: 15),
                    Text(
                      'Ger your groceries in as fast as one hour',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      // alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(left: 50, right: 50),
                      height: 45,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.buttonColor),
                      child: TextButton(
                        onPressed: () {
                          Get.to(() => SplashPage());
                        },
                        child: Text(
                          "Get started",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
