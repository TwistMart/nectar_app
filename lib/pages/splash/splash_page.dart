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
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.45,
              padding: EdgeInsets.all(16.0),
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
                    color: Colors.black),
                children: [
                  TextSpan(text: 'Get your groceries\n'),
                  TextSpan(text: 'with nectar'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
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
              height: 10,
            ),
            Center(
              child: Text(
                'Or connect with social media',
                // textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10,
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
                  Icon(Icons.g_mobiledata, color: Colors.white, size: 35),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 300,
                    height: Dimensions.screenHeight / 13,
                    child: Center(child: Text('Continue with Google')),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
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
                    width: 5,
                  ),
                  Container(
                    width: 300,
                    height: Dimensions.screenHeight / 13,
                    child: Center(child: Text('Continue with Facebook')),
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
