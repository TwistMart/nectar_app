import 'package:flutter/material.dart';
import 'package:grocer_test/pages/splash/splash_page.dart';
import 'package:grocer_test/pages/widgets/colors.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'lib/images/grocery_man.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black54,
          ),
          Column(
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  width: 40,
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    'lib/images/carrot.png',
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome to our store',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Ger your groceries in as fast as one hour',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
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
                          Get.to(() => SplashPage);
                          // print(productController.addItems(product));
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
