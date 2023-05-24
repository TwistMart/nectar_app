import 'package:flutter/material.dart';
import 'package:grocer_test/pages/widgets/colors.dart';
import 'package:grocer_test/pages/widgets/favourite_item_tile.dart';
import 'package:grocer_test/pages/widgets/grocery_item_tile.dart';
import 'package:grocer_test/pages/widgets/widget_getters.dart';

class FavouritePage extends StatelessWidget {
  FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: SafeArea(
        child: Column(
          children: [            
           
            const Padding(
              padding: EdgeInsets.only(top: 30, bottom: 30),

              child: Text(
                textAlign: TextAlign.center,
                'Favourite',
                style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),

            Expanded(
                child: ListView.builder(
                    itemCount: favouriteItems.length,
                    itemBuilder: (context, index) {
                      return FavouriteItemTile(
                        imagePath: favouriteItems[index][0],
                        itemName: favouriteItems[index][1],
                        description: favouriteItems[index][2],
                        itemPrice: favouriteItems[index][3],
                      );
                    })),

              SizedBox(
                height: 20,
              ),

              Container(
                // alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(left: 25, right: 25),                                        
                height: 50,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(10),
                    color: AppColors.buttonColor),
                child: TextButton(
                  onPressed: () {
                    print('add  all to cart');
                    // print(productController.addItems(product));
                  },
                  child: Text(
                     "Add  all to cart",
                     style: TextStyle(
                    color: Colors.white,

                     ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
