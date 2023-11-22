import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mynurva_project/auth/common_files.dart';
import 'package:mynurva_project/auth/login_page.dart';

class Otp extends StatefulWidget {
  var phoneNumber;
  var verificationId;



   Otp({super.key, required String verificationId, required String phoneNumber});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {

  String verificationId = '';




  List<FocusNode> _focusNodes = List.generate(6, (index) => FocusNode());
  List<TextEditingController> _controllers = List.generate(6, (index) => TextEditingController());

  TextEditingController _otpController = TextEditingController();



  Future<void> handleOtpVerification() async {
    String enteredOtp = _otpController.text.trim();

    if (enteredOtp.isNotEmpty) {
      try {
        // Use the provided verificationId and entered OTP for verification
        PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: widget.verificationId,
          smsCode: enteredOtp,
        );

        // Sign in with the entered OTP
        await FirebaseAuth.instance.signInWithCredential(credential);

        // OTP verification successful, navigate to the next screen or perform other actions
        print('OTP verification successful');

        // Example: Navigate to a success screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginPage(),
          ),
        );
      } catch (e) {
        // OTP verification failed, handle the error
        print('Error verifying OTP: $e');

        // Show an error message to the user
  //       showDialog(
  //         context: context,
  //         builder: (context) {
  //           return AlertDialog(
  //             title: Text('Error'),
  //             content: Text('Failed to verify OTP. Please try again.'),
  //             actions: [
  //               TextButton(
  //                 onPressed: () {
  //                   Navigator.pop(context);
  //                 },
  //                 child: Text('OK'),
  //               ),
  //             ],
  //           );
  //         },
  //       );
  //     }
  //   } else {
  //     // Display an error message for empty OTP
  //     showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: Text('Error'),
  //           content: Text('Please enter the OTP.'),
  //           actions: [
  //             TextButton(
  //               onPressed: () {
  //                 Navigator.pop(context);
  //               },
  //               child: Text('OK'),
  //             ),
  //           ],
  //         );
  //       },
  //     );
  //   }
  // }

  @override


  // Future<void> handleOtpVerification() async {
  //   String enteredOtp = _otpController.text.trim();
  //
  //   if (enteredOtp.isNotEmpty) {
  //     try {
  //       await verifyOtp(enteredOtp);
  //       PhoneAuthCredential credential = PhoneAuthProvider.credential(
  //           verificationId: widget.verificationId,
  //           smsCode: enteredOtp,
  //       );
  //       // OTP verification successful, navigate to the next screen or perform other actions
  //       // You can navigate to the next screen or perform other actions here
  //     } catch (e) {
  //       // OTP verification failed, handle the error
  //       // You can show an error message to the user
  //       showDialog(
  //         context: context,
  //         builder: (context) {
  //           return AlertDialog(
  //             title: Text('Error'),
  //             content: Text('Failed to verify OTP. Please try again.'),
  //             actions: [
  //               TextButton(
  //                 onPressed: () {
  //                   Navigator.pop(context);
  //                 },
  //                 child: Text('OK'),
  //               ),
  //             ],
  //           );
  //         },
  //       );
  //     }
  //   } else {
  //     // Display an error message for empty OTP
  //     // You can show an error message to the user
  //     showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: Text('Error'),
  //           content: Text('Please enter the OTP.'),
  //           actions: [
  //             TextButton(
  //               onPressed: () {
  //                 Navigator.pop(context);
  //               },
  //               child: Text('OK'),
  //             ),
  //           ],
  //         );
  //       },
  //     );
  //   }
  // }


  Future<void> verifyOtp(String otp) async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: otp,
      );

      // Sign in with the entered OTP
      await FirebaseAuth.instance.signInWithCredential(credential);

      // You can navigate to the next screen or perform other actions here
      print('OTP verification successful');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      );




    } catch (e) {
      // OTP verification failed, handle the error
      print('Error verifying OTP: $e');
      // You can show an error message to the user
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Failed to verify OTP. Please try again.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  throw {
    // Display an error message for empty OTP
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text('Please enter the OTP.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    )
    };
  } // Propagate the error to the calling function
    }
  }




  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }

  for (var focusNode in _focusNodes) {
  focusNode.dispose();
  }
  super.dispose();
}

void closeKeyboard() {
  FocusScope.of(context).requestFocus(FocusNode());
}

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
            SizedBox(height: screenHeight/12),
            Center(
              child: Container(
                height: screenHeight/2,
                width: screenWidth/1.30,
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('OTP Verification',style: TextStyle(color: Appcolors.appGreen,fontSize: screenHeight/30,fontWeight: FontWeight.bold)),
                     SizedBox(height: screenHeight/100),
                     const Center(child: Text('Enter the code that was sent to your \n                   phone number')),
                     SizedBox(height: screenHeight/15),
                     Container(
                       width: screenWidth/1.68,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: List.generate(6, (index) {
                               return Row(
                                 children: [
                                   Container(
                                     width: 30.0,
                                     height: 50.0,
                                     alignment: Alignment.center,
                                     decoration: BoxDecoration(
                                       border: Border.all(
                                         width: 2.0,
                                         color: Appcolors.otpbrown
                                       ),
                                       borderRadius: BorderRadius.circular(15.0),
                                     ),
                                     child: TextField(
                                       inputFormatters: [LengthLimitingTextInputFormatter(1)],
                                       controller: _controllers[index],
                                       focusNode: _focusNodes[index],
                                       textAlign: TextAlign.center,
                                       keyboardType: TextInputType.number,
                                       decoration: const InputDecoration(
                                         border: InputBorder.none,
                                       ),
                                       onChanged: (value) {
                                         if (value.isNotEmpty) {
                                           if (index < 5) {
                                             _focusNodes[index].unfocus();
                                             _focusNodes[index + 1].requestFocus();
                                           } else {
                                             // The last OTP number is completed, close the keyboard
                                             closeKeyboard();
                                           }
                                         }
                                       },
                                     ),
                                   ),
                                   const SizedBox(width: 8),
                                 ],
                               );
                             }),
                           ),
                           SizedBox(height: screenHeight/100),
                           const Padding(
                             padding: EdgeInsets.only(right: 10),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                 Text('00.30'),
                               ],
                             ),
                           )
                         ],
                       ),
                     ),
                    SizedBox(height: screenHeight/35),
                    SizedBox(
                      width: double.infinity,
                      height: screenHeight / 16,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ), backgroundColor: Appcolors.appGreen,
                          ),
                          onPressed: () {
                            handleOtpVerification();
                          },
                          child: const Text(
                            'Verify',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )),

                    ),
                    SizedBox(height: screenHeight/20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Dont receive code?'),
                        SizedBox(width: screenWidth/100),
                        const Text('Resend',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),)
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
