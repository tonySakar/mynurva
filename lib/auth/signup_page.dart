import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mynurva_project/auth/common_files.dart';
import 'package:mynurva_project/auth/userId.dart';
import 'package:http/http.dart' as http;

import 'create_password.dart';
import 'login_page.dart';
import 'otp.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  String userId = '';

  Future<String> CreateuserApi() async {
    var apiKey = '1143e9c4b279';
    const int partnerId = 1033;
    const String baseUrl = 'https://demo.mynurva.com/xapi/createUser';

    final String firstname = nameController.text;
    final String surname = surnameController.text;
    final String email = emailController.text;
    final String phonenum = phoneNumberController.text;
    // https: //demo.mynurva.com/xapi/createUser/apikey99/1/name/surname/name%40domain.com/%2B441234567890

    final String username = 'extra';
    final String password = 'digital56789!';
    final String basicAuth =
        'Basic ' + base64.encode('$username:$password'.codeUnits);
    print(basicAuth);

    final apiUrl = '$baseUrl/$apiKey/$partnerId/$firstname/$surname/$email/$phonenum';
    print(apiUrl);

    final response = await http.get(Uri.parse(apiUrl),
        headers: {'authorization': basicAuth});

    if (response.statusCode == 200) {
      // Parse the response body
      final Map<String, dynamic> responseBody = json.decode(response.body);

      if (responseBody.containsKey('data') && responseBody['data'].containsKey('user_id')
          && responseBody['data'].containsKey('activation_code')) {
        // Extract 'user_id'
        String userId = responseBody['data']['user_id'];
        String activationCode = responseBody['data']['activation_code'];
        print('Activation Code: $activationCode');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => getId(userId: userId, activationCode:activationCode),
          ),
        );
      } else {
        // Handle the case when 'user_id' is not present in the response
        print('User ID not found in the API response');
      }
    } else {
      // Handle API error
      print('API request failed with status code: ${response.statusCode}');
    }
    print(response.statusCode);
    // print('tony');
    print(response.body);
    return userId;

  }



  @override
  void dispose() {
    super.dispose();
  }

    @override
    Widget build(BuildContext context) {
      double screenWidth = MediaQuery
          .of(context)
          .size
          .width;
      double screenHeight = MediaQuery
          .of(context)
          .size
          .height;
      print('width $screenWidth');
      print('hight $screenHeight');

      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight / 30),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset('assets/images/logoname.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth / 19.2,
                    vertical: screenHeight / 40.5),
                child: Image.asset('assets/images/back.png'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth / 14),
                child: Text('Signup',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenHeight / 29,
                        color: Appcolors.appGreen)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth / 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Signup to continue the app'),
                    SizedBox(height: screenHeight / 20),
                    Text('First name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: screenHeight / 40)),
                    SizedBox(height: screenHeight / 200),
                    SizedBox(
                      height: screenHeight / 15,
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          hintText: 'Enter your name',
                          suffixIcon: Image.asset('assets/images/profile.png'),
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
                              color: Appcolors
                                  .appGreen,
                              // Set the border color when focused
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text('Surname',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: screenHeight / 40)),
                    SizedBox(height: screenHeight / 200),
                    SizedBox(
                      height: screenHeight / 15,
                      child: TextField(
                        controller: surnameController,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          hintText: 'Enter your name',
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset('assets/images/profile.png'),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                              color: Appcolors.appGreen,
                              width: 1.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                              color: Appcolors
                                  .appGreen,
                              // Set the border color when focused
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text('Email',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: screenHeight / 40)),
                    SizedBox(height: screenHeight / 200),
                    SizedBox(
                      height: screenHeight / 15,
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          hintText: 'Enter your mail',
                          suffixIcon: Image.asset('assets/images/email.png'),
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
                              color: Appcolors
                                  .appGreen,
                              // Set the border color when focused
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text('Phone Number',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: screenHeight / 40)),
                    SizedBox(height: screenHeight / 200),
                    SizedBox(
                      height: screenHeight / 15,
                      child: TextField(
                        controller: phoneNumberController,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          hintText: 'Enter your number',
                          suffixIcon: Image.asset('assets/images/phone.png'),
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
                              color: Appcolors
                                  .appGreen,
                              // Set the border color when focused
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: screenHeight / 15,
                    //   child: TextField(
                    //     controller: password,
                    //     decoration: InputDecoration(
                    //       contentPadding: const EdgeInsets.symmetric(
                    //           vertical: 5, horizontal: 10),
                    //       hintText: 'Enter your number',
                    //       suffixIcon: Image.asset('assets/images/phone.png'),
                    //       enabledBorder: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(15.0),
                    //         borderSide: const BorderSide(
                    //           color: Appcolors.appGreen,
                    //           width: 2.0,
                    //         ),
                    //       ),
                    //       focusedBorder: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(15.0),
                    //         borderSide: const BorderSide(
                    //           color: Appcolors
                    //               .appGreen, // Set the border color when focused
                    //           width: 2.0,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: screenHeight / 15,
                    //   child: TextField(
                    //     controller: confirmpassword,
                    //     decoration: InputDecoration(
                    //       contentPadding: const EdgeInsets.symmetric(
                    //           vertical: 5, horizontal: 10),
                    //       hintText: 'Enter your number',
                    //       suffixIcon: Image.asset('assets/images/phone.png'),
                    //       enabledBorder: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(15.0),
                    //         borderSide: const BorderSide(
                    //           color: Appcolors.appGreen,
                    //           width: 2.0,
                    //         ),
                    //       ),
                    //       focusedBorder: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(15.0),
                    //         borderSide: const BorderSide(
                    //           color: Appcolors
                    //               .appGreen, // Set the border color when focused
                    //           width: 2.0,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(height: screenHeight / 20),
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
                          onPressed: () {
                            CreateuserApi();
                          },
                          child: const Text(
                            'Register',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )),
                    ),
                    SizedBox(height: screenHeight / 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already have an account?'),
                        SizedBox(width: screenWidth / 100),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ))
                      ],
                    ),
                    SizedBox(height: screenHeight / 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

