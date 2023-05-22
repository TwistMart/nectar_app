import 'package:flutter/material.dart';
import 'package:grocer_test/pages/widgets/colors.dart';
import 'package:grocer_test/pages/widgets/dimensions.dart';
import 'package:country_code_picker/country_code_picker.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

  String selectedCountryCode = '+880';


class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.45,
              padding: EdgeInsets.all(16.0),
              child: Expanded(
                child: Image.asset(
                  'lib/images/shoppingbagpour.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),

            
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                    'Get your groceries ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'with nectar',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  ],
                  
                  
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Container(
                margin: EdgeInsets.only(left: 0),
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
                    color: Colors.black,
                    thickness: 1,
                  ),


                  Center(
                    child: Text('Or connect with social media',
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey
                    ),),
                  ),
                  
                  SizedBox(
                    height: 5,
                  ),

                  ElevatedButton(
                  onPressed: () {
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
                      Icon(Icons.facebook, color: Colors.white,),
                      SizedBox(
                        width: 5,
                      ),

                      Container(
                        width: 300,
                        height: Dimensions.screenHeight / 13,
                        child: Center(
                          child: Text(
                            'Sign in with Facebook'
                          )
                        ),
                      ),
                    ],
                  ),
                ),

              SizedBox(
                  height: 10,
                ),

                  ElevatedButton(
                  onPressed: () {
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
                      Icon(Icons.facebook, color: Colors.white,),
                      SizedBox(
                        width: 5,
                      ),

                      Container(
                        width: 300,
                        height: Dimensions.screenHeight /13,
                        child: Center(
                          child: Text(
                            'Sign in with Facebook'
                          )
                        ),
                      ),
                    ],
                  ),
                ),

                  // ElevatedButton.icon(

                  //   onPressed: () {
                  //     // Handle sign in with Facebook
                  //   },
                  //   icon: Icon(Icons.login),
                  //   label: Text('Sign in with Facebook'),
                  // ),
          ],
        ),
      ),
    );
  }
}
