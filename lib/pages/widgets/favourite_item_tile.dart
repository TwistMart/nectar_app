import 'package:flutter/material.dart';
import 'package:grocer_test/pages/widgets/colors.dart';
import 'package:grocer_test/pages/widgets/dimensions.dart';
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
            margin: EdgeInsets.only(left: Dimensions.width20, top: Dimensions.height10),
            height: Dimensions.height10*Dimensions.height10,
            width: double.maxFinite,
            child: Row(children: [
              Center(
                child: Container(
                    child: Image.asset(
                  imagePath,
                  height: Dimensions.height20+Dimensions.height20,
                  width: Dimensions.width20+Dimensions.width20,
                  fit: BoxFit.cover,
                )),
              ),

               SizedBox(
                width: Dimensions.width20+Dimensions.width20,
              ),
              

              Expanded(
                child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(itemName, style: TextStyle(
                          fontSize: Dimensions.font13,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gilroy-Bold',
                          color: AppColors.BigWords
                        )),
                        Text(description, 
                         style: TextStyle(
                          fontSize: Dimensions.font10,
                          color: AppColors.SmallWords,
                          fontFamily: 'Gilroy-Bold'
                        )
                        
                        ),
                      ]),
                ),
              ),
              
              Row(
                children: [
               
                  Text('\$$itemPrice',  style: TextStyle(
                          fontSize: Dimensions.font13,
                          fontWeight: FontWeight.bold,
                          color: AppColors.BigWords,
                          fontFamily: 'Gilroy'

                        )  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon (
                    Icons.arrow_forward_ios_sharp,
                    size: Dimensions.icon10,
                    color: AppColors.BigWords,
                    
                    )
                ],
              )
            ])));
  }
}
