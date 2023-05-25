import 'package:flutter/material.dart';
import 'package:grocer_test/pages/favourite/favourite_page.dart';
import 'package:grocer_test/pages/widgets/colors.dart';
import 'package:get/get.dart';
import 'package:grocer_test/pages/widgets/dimensions.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  // final String itemPrice;
  final String imagePath;
  final color;

  GroceryItemTile({
    super.key,
    required this.itemName,
    // required this.itemPrice,
    required this.imagePath,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: GestureDetector(
        onTap: () {
          Get.to(() => FavouritePage());
        },
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: color[200], borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // image
              Container(
                margin: EdgeInsets.only(top: Dimensions.height20),
                child: Image.asset(
                  imagePath,
                  height: Dimensions.height10*8,
                ),
              ),


              Text(
                itemName,
                style: TextStyle(
                    fontSize: Dimensions.font14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.BigWords,
                    fontFamily: 'Gilroy-Bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
