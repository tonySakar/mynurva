import 'package:flutter/material.dart';

import 'common_files.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}


class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    print('width $screenWidth');
    print('hight $screenHeight');

    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight / 30),
            Center(
              child: Padding(
                padding:  const EdgeInsets.symmetric(vertical: 20),
                child: Image.asset('assets/images/logoname.png'),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: screenWidth /19.2 ,vertical: screenHeight/40.5),
              child: Image.asset('assets/images/back.png'),
            ),
            Center(
              child: Container(
                height: screenHeight/3.5,
                width: screenWidth / 1.6,
                decoration: BoxDecoration(
                  color: Appcolors.appgrey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: screenHeight/15),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Forgot Password? ',style: TextStyle(fontSize: screenHeight/30,fontWeight: FontWeight.bold,color: Appcolors.appGreen),),
                  SizedBox(height: screenHeight/100),
                  const Text('Dont worry it happens, please enter\n your phone number',textAlign: TextAlign.center),
                  SizedBox(height: screenHeight/30),
                  Container(
                    height: screenHeight/4,
                    width: screenWidth / 1.25,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Phone Number', style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19)),
                        SizedBox(height: screenHeight/70),
                        SizedBox(
                          height: screenHeight/16,
                          child: TextField(
                            enableSuggestions: false,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(left: 15),
                              suffixIcon:  const Icon(Icons.phone,color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: const BorderSide(
                                  color: Appcolors.appGreen,
                                  width: 2.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: const BorderSide(
                                  color: Appcolors.appGreen, // Set the border color when focused
                                  width: 2.0,
                                ),
                              ),

                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight/30),
                        SizedBox(
                          width: double.infinity,
                          height: screenHeight / 16,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                primary: Appcolors.appGreen,
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Send Code',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              )),

                        ),
                      ],
                    ),
                  ),

                ],
              ),
            )


          ],
        ),
      ),

    );
  }
}
