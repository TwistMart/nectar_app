import 'package:flutter/material.dart';
import 'package:grocer_test/pages/favourite/favourite_page.dart';
import 'package:grocer_test/pages/widgets/colors.dart';
import 'package:grocer_test/pages/widgets/dimensions.dart';
import 'package:grocer_test/pages/widgets/grocery_item_tile.dart';
import 'package:grocer_test/pages/widgets/widget_getters.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  TextEditingController searchController = TextEditingController();

//   Color hexToColor(String hexString) {
//   final int value = int.parse(hexString.replaceFirst('0xff', ''), radix: 16);
//   return Color(value).withOpacity(1.0);
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                textAlign: TextAlign.center,
                'Find Products',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: Dimensions.height30+Dimensions.height15,
              width: Dimensions.width20*Dimensions.width20,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.radius10)),
              child: TextFormField(
                controller: searchController,
                onChanged: (value) {
                  print('printed searchProducts');
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Colors.black,
                  hintText: 'Search Store ',                 
                  hintStyle: TextStyle(color: Colors.grey),

                  border: OutlineInputBorder(
                    borderSide: BorderSide.none                   
                   
                  ),
                 
                  fillColor: AppColors.SearchColor,
                  filled: true,
                ),
              ),
            ),
            Expanded(
                child: GridView.builder(
              padding: const EdgeInsets.all(12.0),
              itemCount: shopItems.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1 / 1.3),
              itemBuilder: (context, index) {
               

                // final String hexColor = shopItems[index][2];
                // final Color color = hexToColor(hexColor);

                return GroceryItemTile(
                  itemName: shopItems[index][0],
                  imagePath: shopItems[index][1],
                  color: shopItems[index][2],
                  
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
