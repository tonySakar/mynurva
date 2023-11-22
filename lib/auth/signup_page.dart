
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mynurva_project/auth/common_files.dart';

import 'create_password.dart';
import 'login_page.dart';
import 'otp.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  String verificationId = '';

  // // Function to send OTP to the provided phone number
  // Future<void> sendOtp(String phoneNumber) async {
  //   try {
  //     await FirebaseAuth.instance.verifyPhoneNumber(
  //       phoneNumber: phoneNumber,
  //       verificationCompleted: (PhoneAuthCredential credential) async {
  //         // Auto-retrieval of OTP completed (e.g., on Android devices)
  //         // Sign in using the auto-retrieved credential
  //         await FirebaseAuth.instance.signInWithCredential(credential);
  //         // You can navigate to the next screen or perform other actions here
  //       },
  //       verificationFailed: (FirebaseAuthException e) {
  //         print('Verification Failed: $e');
  //       },
  //       codeSent: (String verificationId, int? resendToken) {
  //         // Save the verification ID to use it later
  //         this.verificationId = verificationId;
  //       },
  //       codeAutoRetrievalTimeout: (String verificationId) {
  //         // Auto-retrieval timed out
  //         // You can handle this case if needed
  //       },
  //     );
  //   } catch (e) {
  //     print('Error sending OTP: $e');
  //   }
  // }
  //
  //
  // // Function to verify the entered OTP
  // Future<void> verifyOtp(String otp) async {
  //   try {
  //     PhoneAuthCredential credential = PhoneAuthProvider.credential(
  //       verificationId: verificationId,
  //       smsCode: otp,
  //     );
  //
  //     // Sign in with the entered OTP
  //     await FirebaseAuth.instance.signInWithCredential(credential);
  //
  //     // You can navigate to the next screen or perform other actions here
  //   } catch (e) {
  //     print('Error verifying OTP: $e');
  //   }
  // }



  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();



  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  // // Future<void> signUp() async {
  // //   if (passwordConfirmed()) {
  // //     //create user
  // //     await FirebaseAuth.instance.createUserWithEmailAndPassword
  // //       (email: _emailcontroller.text.trim(), password: _passwordcontroller.text.trim(),
  // //     );
  // //     //add user details
  // //     addUserDetails(
  // //       _namecontroller.text.trim(),
  // //       _surnamecontroller.text.trim(),
  // //       _emailcontroller.text.trim(),
  // //       int.parse(_phonenumcontroller.text.trim()),
  // //
  // //     );
  // //   }
  // // }
  // Future<void> signUp() async {
  //   try {
  //     if (_passwordcontroller.text == _confirmpswrdcontroller.text) {
  //       UserCredential userCredential = await FirebaseAuth.instance
  //           .createUserWithEmailAndPassword(
  //           email: _emailcontroller.text,
  //           password: _passwordcontroller.text);
  //
  //       // Store additional user details in Firestore
  //       await FirebaseFirestore.instance.collection('users').doc(userCredential.user!.uid).set({
  //         'name': _namecontroller.text,
  //         'email': _emailcontroller.text,
  //         'phone': _phonenumcontroller.text,
  //       });
  //
  //       // Navigate to the home screen or any other screen
  //       // You can replace the MaterialPageRoute with your desired route
  //       Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(builder: (context) => const LoginPage()),
  //       );
  //     } else {
  //       // Passwords do not match
  //       // You can show an error message or handle it as per your requirements
  //       print('Passwords do not match');
  //     }
  //   } on FirebaseAuthException catch (e) {
  //     print('FirebaseAuthException: $e');
  //     // Handle the exception as per your requirements
  //   } catch (e) {
  //     print('Error: $e');
  //     // Handle other exceptions as needed
  //   }
  // }
  //
  // Future addUserDetails(String firstname, String surname, String email, int phone) async {
  //   await FirebaseFirestore.instance.collection('user').add({
  //     'firstname':  firstname ,
  //     'surname' : surname,
  //     'email' : email,
  //     'phone' : phone,
  //
  //   });
  // }
  //
  //
  // bool passwordConfirmed() {
  //   if (_passwordcontroller.text.trim() == _confirmpswrdcontroller.text.trim()){
  //     return true;
  //   }
  //   else{
  //     return false;
  //   }
  // }

  @override


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
                padding:  const EdgeInsets.symmetric(vertical: 20),
                child: Image.asset('assets/images/logoname.png'),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: screenWidth /19.2 ,vertical: screenHeight/40.5),
              child: Image.asset('assets/images/back.png'),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: screenWidth/14),
              child: Text('Signup',style: TextStyle(fontWeight: FontWeight.bold,fontSize: screenHeight/29,color: Appcolors.appGreen)),
            ),
             Padding(
               padding:  EdgeInsets.symmetric(horizontal: screenWidth/10),
               child:  Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const Text('Signup to continue the app'),
                   SizedBox(height: screenHeight/20),
                   Text('First name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: screenHeight/40)),
                   SizedBox(height: screenHeight/200),
                   SizedBox(
                     height: screenHeight/15,
                     child: TextField(
                       decoration: InputDecoration(
                         contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                         hintText: 'Enter your name',
                         suffixIcon:  Image.asset('assets/images/profile.png'),
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
                   SizedBox(height: screenHeight/20),
                   Text('Email',style: TextStyle(fontWeight: FontWeight.bold,fontSize: screenHeight/40)),
                   SizedBox(height: screenHeight/200),
                   SizedBox(
                     height: screenHeight/15,
                     child: TextField(
                       decoration: InputDecoration(
                         contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                         hintText: 'Enter your mail',
                         suffixIcon:  Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: Image.asset('assets/images/email.png'),
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
                             color: Appcolors.appGreen, // Set the border color when focused
                             width: 1.0,
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
                         onPressed: () {

                         },
                         child: const Text(
                           'Register',
                           style: TextStyle(
                               fontWeight: FontWeight.bold, fontSize: 18),
                         )),
                   ),
                    SizedBox(height: screenHeight/50),
                    Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       const Text('Already have an account?'),
                       SizedBox(width: screenWidth/100),
                       const Text('Login',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),)
                     ],
                   ),
                   SizedBox(height: screenHeight/10),



                 ],
               ),
             )
          ],
        ),
      ),
    );
  }
}
