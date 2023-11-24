import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mynurva_project/auth/common_files.dart';
import 'package:http/http.dart' as http;
import 'package:mynurva_project/auth/otp.dart';
import 'package:mynurva_project/auth/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumbrController = TextEditingController();


  // void login() async {
  //   final email = emailController.text;
  //   // final password = phoneNumbrController.text;
  //
  //   // Replace the following URL with your actual login API endpoint
  //   final apiUrl = "https://your-login-api-endpoint.com/login";
  //
  //   try {
  //     final response = await http.post(
  //       Uri.parse(apiUrl),
  //       body: {
  //         'email': email,
  //         'password': password,
  //       },
  //     );
  //
  //     if (response.statusCode == 200) {
  //       // Successful login
  //       final responseData = json.decode(response.body);
  //       // Process responseData as needed
  //       print(responseData);
  //     } else {
  //       // Handle login error
  //       print("Error: ${response.statusCode}");
  //     }
  //   } catch (e) {
  //     // Handle exceptions
  //     print("Exception: $e");
  //   }
  // }

  final FocusNode _focusNode = FocusNode();
  final bool _isFocused = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
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
            SizedBox(height: screenHeight / 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: screenHeight / 29,
                        fontWeight: FontWeight.bold,
                        color: Appcolors.appGreen),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 35),
            Center(
              child: Container(
                height: 330,
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Phone Number',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenHeight / 40),
                    ),
                    SizedBox(height: screenHeight / 200),
                    SizedBox(
                      height: 50,
                      child: TextField(
                        controller: emailController,
                        enableSuggestions: false,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 15),
                          suffixIcon:
                              const Icon(Icons.phone, color: Colors.grey),
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
                                  .appGreen, // Set the border color when focused
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight / 30),
                    Text(
                      ' Password',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenHeight / 40),
                    ),
                    SizedBox(height: screenHeight / 200),
                    Container(
                      height: screenHeight / 15,
                      child: TextField(
                        // controller: passwordController,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 15),
                          suffixIcon: const Icon(Icons.remove_red_eye,
                              color: Colors.grey),
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
                                  .appGreen, // Set the border color when focused
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight / 400),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forget Password?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
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
                            // login;
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )),
                    ),
                    SizedBox(height: screenHeight / 150),
                    Column(
                      children: [
                        const Text('By signing in, you agree to the'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('T&C',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red)),
                            SizedBox(width: screenWidth / 200),
                            const Text('and'),
                            SizedBox(width: screenWidth / 200),
                            const Text(
                              ' Privacy policy',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight / 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Dont have an account? '),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
