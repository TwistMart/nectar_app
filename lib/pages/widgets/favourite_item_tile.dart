import 'package:flutter/material.dart';
import 'package:grocer_test/pages/widgets/widget_getters.dart';

class FavouriteItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final String description;

  FavouriteItemTile(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imagePath,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 0.3,
              color: Colors.grey
            ),
            bottom: BorderSide(
              width: 0.3,
              color: Colors.grey
            ),
          )
          ),

        child: Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            height: 100,
            width: double.maxFinite,
            child: Row(children: [
              Center(
                child: Container(
                    child: Image.asset(
                  imagePath,
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                )),
              ),

               SizedBox(
                width: 40,
              ),
              

              Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(itemName),
                      Text(description),
                    ]),
              ),
              SizedBox(
                width: 60,
              ),
              Expanded(
                child: Row(
                  children: [
                 
                    Text('\$$itemPrice'),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.arrow_forward_ios_sharp)
                  ],
                ),
              )
            ])));
  }
}
