import 'package:flutter/material.dart';
import 'package:mynurva_project/auth/common_files.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({super.key});

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    print('width $screenWidth');
    print('height $screenHeight');
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: screenHeight / 15),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Image.asset('assets/images/logoname.png'),
              ),
            ),
             SizedBox(height: screenHeight/10),
             Text('Enter a new password',style: TextStyle(fontSize: screenHeight/30,fontWeight: FontWeight.bold,color: Appcolors.appGreen,),),
             SizedBox(height: screenHeight/100),
             const Text('Your new password must differ from\n your old password ',textAlign: TextAlign.center,style: TextStyle(fontSize: 16),),
            SizedBox(height: screenHeight/20),
            SizedBox(
               height:400,
              width:300,
              child:   Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(' Password',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                  SizedBox(height: screenHeight/100),
                  SizedBox(
                    height: screenHeight/15,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon:  Image.asset('assets/images/hide.png'),
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
                  const Text('Confirm Password',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                  SizedBox(height: screenHeight/100),
                  SizedBox(
                    height: screenHeight/15,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon:  Image.asset('assets/images/hide.png'),
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
                  SizedBox(height: screenHeight/25),
                  SizedBox(
                    width: double.infinity,
                    height: screenHeight / 16,
                    child: ElevatedButton(
                        onPressed: () {  },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Appcolors.appGreen,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            )
                        ),
                        child: const Text("Reset Password",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)),
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
