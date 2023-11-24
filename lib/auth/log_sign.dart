import 'package:flutter/material.dart';
import 'package:mynurva_project/auth/common_files.dart';
import 'package:mynurva_project/auth/login_page.dart';
import 'package:mynurva_project/auth/signup_page.dart';

class LogSign extends StatefulWidget {
  const LogSign({super.key});

  @override
  State<LogSign> createState() => _LogSignState();
}

class _LogSignState extends State<LogSign> {
  @override


  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    print('width $screenWidth');
    print('hight $screenHeight');

    return Scaffold(
        backgroundColor: Appcolors.appGreen,
        body: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/up.png'),
              ],
            ),
          ),
          SizedBox(height: screenHeight / 18),
          Container(
              height: screenHeight / 2.8,
              color: Appcolors.appGreen,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: screenHeight / 3.5,
                      width: screenWidth / 1.63,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: screenHeight / 5,
                        width: screenWidth / 5.5,
                        color: Appcolors.appGreen,
                        child: Image.asset('assets/images/rightup.png'),
                      ),
                    ],
                  )
                ],
              )),
          Container(
              height: screenHeight / 6, color: Appcolors.appGreen,
            child: Stack(
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/left.png')
                  ],
                )
              ],
            ),

          ),
          Container(
              height: screenHeight / 4.8,
              color: Appcolors.appGreen,
              child: Stack(
                children: [
                  Center(
                    child: Column(children: [
                      SizedBox(
                        width: screenWidth/1.4,
                        height: screenHeight / 16,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                primary:Colors.white
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPage()));
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18,color: Colors.black),
                            )),
                      ),
                      SizedBox(height: screenHeight/60),
                      const Text('Or'),
                      SizedBox(height: screenHeight/60),
                      SizedBox(
                        width: screenWidth/1.4,
                        height: screenHeight / 16,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                primary:Colors.white
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUp()));

                            },
                            child: const Text(
                              'Signup',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18,color: Colors.black),
                            )),
                      ),
                    ],)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: screenHeight / 2,
                          width: screenWidth / 8,
                          color: Appcolors.appGreen,
                          child: Image.asset('assets/images/rightup.png'),
                        ),
                      ],
                    ),
                  )
                ],
              )),
          Container(
            height: screenHeight/8.50,
            color: Appcolors.appGreen,
            child: Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: SizedBox(
                      height: screenHeight/2.5,
                      width: screenWidth/2,
                      child: Image.asset('assets/images/down.png')),
                )
              ],
            ),
          )



        ]));
  }
}
