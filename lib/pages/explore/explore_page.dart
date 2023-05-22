import 'package:flutter/material.dart';
import 'package:grocer_test/pages/widgets/dimensions.dart';
import 'package:grocer_test/pages/widgets/grocery_item_tile.dart';
import 'package:grocer_test/pages/widgets/widget_getters.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  TextEditingController searchController = TextEditingController();

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
              height: 45,
              width: 400,
              child: TextFormField(
                controller: searchController,
                onChanged: (value) {
                  print('printed searchProducts');
                },
                decoration: InputDecoration(
                  hintText: 'search for all offers provided ',
                  labelStyle: TextStyle(color: Colors.grey),
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 77, 62, 62),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  fillColor: Colors.grey.shade100,
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
                return GroceryItemTile(
                  itemName: shopItems[index][0],
                  itemPrice: shopItems[index][1],
                  imagePath: shopItems[index][2],
                  color: shopItems[index][3],
                  onPressed: () {
                    print("add to cart");
                  },
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
