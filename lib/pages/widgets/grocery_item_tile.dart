import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  // final String itemPrice;
  final String imagePath;
  final color;
  void Function()? onPressed;

  GroceryItemTile({
    super.key,
    required this.itemName,
    // required this.itemPrice,
    required this.imagePath,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: color[200], borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // image
            Image.asset(
              imagePath,
              height: 80,
              
            ),

            Spacer(),

         
           Text(
              itemName,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),

            Spacer(),


            // price + button
            // MaterialButton(
            //   onPressed: onPressed, 
            //   color: color,
            //   child: Text(
            //     'Access Favourite'
            //   ),
            // ),
            // const Spacer(),
          ],
        ),
      ),
    );
  }
}
