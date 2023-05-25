import 'package:flutter/material.dart';
import 'package:grocer_test/pages/explore/explore_page.dart';
import 'package:grocer_test/pages/widgets/colors.dart';
import 'package:grocer_test/pages/widgets/dimensions.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

String selectedCountryCode = '+880';

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.40,
              // padding: EdgeInsets.all(16.0),
             
              child: Image.asset(
                // 'lib/images/shoppingbagpour.jpg',
                'lib/images/grocery_pour.jpg',            


                fit: BoxFit.cover,
              ),
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Gilroy',
                    color: Colors.black),
                children: [
                  TextSpan(text: 'Get your groceries\n'),
                  TextSpan(text: 'with nectar'),

                 


                

                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            Container(
              child: CountryCodePicker(
                onChanged: (CountryCode countryCode) {
                  setState(() {
                    selectedCountryCode = countryCode.dialCode!;
                  });
                },
                initialSelection: '+880',
                favorite: ['+880'],
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            Center(
              child: Text(
                'Or connect with social media',
                // textAlign: TextAlign.center,
                style: TextStyle(fontSize: Dimensions.font12, color: Colors.grey, fontFamily: 'Gilroy'),
              ),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => HomePage());

              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColors.GooglebuttonColor),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimensions.radius10),
                  ),
                ),
              ),
              child: Row(
                children: [
                  Icon(Icons.g_mobiledata, color: Colors.white, size: Dimensions.icon30+Dimensions.icon5),
                  SizedBox(
                    width: Dimensions.width5,
                  ),
                  Container(
                    width: Dimensions.width25*Dimensions.width10,
                    height: Dimensions.screenHeight / Dimensions.font13,
                    child: Center(child: Text('Continue with Google', style:
                     TextStyle( fontFamily: 'Gilroy')
                    
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => HomePage());
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColors.FacebookbuttonColor),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimensions.radius10),
                  ),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.facebook,
                  ),
                  SizedBox(
                    width: Dimensions.width5,
                  ),
                  Container(
                    width: Dimensions.width25*Dimensions.width10,
                    height: Dimensions.screenHeight / Dimensions.font13,
                    child: Center(child: Text('Continue with Facebook', 
                    style:
                     TextStyle( fontFamily: 'Gilroy')
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
