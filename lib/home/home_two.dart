import 'package:flutter/material.dart';

import '../auth/common_files.dart';
class HomeTwo extends StatefulWidget {
  const HomeTwo({super.key});

  @override
  State<HomeTwo> createState() => _HomeTwoState();
}

class _HomeTwoState extends State<HomeTwo> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    print('width $screenWidth');
    print('hight $screenHeight');
    return  Scaffold (
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight /15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: screenWidth/14),
                  child: Image.asset('assets/images/logoname.png'),
                ),
              ],
            ),
            SizedBox(height: screenHeight/35),
            Center(
              child: Container(
                height: screenHeight/4.02,
                width: screenWidth/1.22,
                decoration: BoxDecoration(
                  color: Appcolors.quoteBrown,
                  borderRadius: BorderRadius.circular(30),
                ),
                child:  Padding(
                  padding:  EdgeInsets.symmetric(vertical: screenHeight/20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: screenWidth/16,),
                        child: const Text('How are you \nFeeling today?',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                      SizedBox(height: screenHeight/100,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: screenWidth/16),
                        child:  Row(
                          children: [
                            const Text('Track your mood',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            SizedBox(width: screenWidth/30),
                            const Icon(Icons.arrow_forward_outlined)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight/35),
            Center(
              child: Container(
                height: screenHeight/8,
                width: screenWidth/1.22,
                decoration: BoxDecoration(
                  color: Appcolors.lightBlue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child:  Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                           Padding(
                             padding:  EdgeInsets.symmetric(horizontal: screenWidth/20),
                             child: const Text('Want to know more about your \nhealth',style: TextStyle(fontSize: 16),),
                           ),
                           SizedBox(height: screenHeight/100,),
                           Padding(
                             padding:  EdgeInsets.symmetric(horizontal: screenWidth/20),
                             child: const Text('Take one of the  curated health quizzas',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                           )
                      ],
                    ),
                    const Icon(Icons.arrow_forward_outlined),
                  ],
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: screenWidth/6.5,vertical: screenHeight/50),
              child: const Text('Here whats recommended',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18   ),),
            ),
            SizedBox(
              height: screenHeight/4.5,
              width: screenWidth/1,
              child: Scrollbar(
                thickness: 4,
                radius: const Radius.circular(30),
                trackVisibility: true,
                thumbVisibility: true,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // Set the scroll direction to horizontal
                  itemCount: 10, // Number of items in the list
                  itemBuilder: (context, index) {
                    // The builder function returns a widget for each item in the list
                    return Row(
                      children: [
                        Container(
                          height:screenHeight/5 ,
                          width:screenWidth/1.2, // Set the width of each item
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),// Add some margin between items
                          // Set the background color
                          child:  Center(
                              child: Row(
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.symmetric(horizontal: screenWidth/100),
                                    child: const CircleAvatar(
                                      radius: 35,
                                      backgroundColor: Appcolors.circlebrown,
                                    ),
                                  ),
                                  SizedBox(width: screenWidth/50),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text('Lorem ipsum',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                          Container(
                                              height: screenHeight/10,
                                              width: screenWidth/2.1,
                                              child: const Center(child: Text('Lorem IpsumLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt,',style: TextStyle(color: Colors.black,fontSize: 13),))),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: screenWidth/20),
                                  const Icon(Icons.arrow_forward_ios_outlined)
                                ],
                              )
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(vertical:screenHeight/15),
                          child: const VerticalDivider(
                            thickness: 1.0, // Set the thickness of the divider
                            color: Colors.black, // Set the color of the divider
                          ),
                        ),
                      ],
                    );
                  },

                ),
              ),


            ),
            SizedBox(height: screenHeight/40),

            Center(
              child: Container(
                height:screenHeight/5 ,
                width:screenWidth/1.2, // Set the width of each item
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),// Add some margin between items
                // Set the background color
                child:  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: screenWidth/50),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Lorem ipsum',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                Container(
                                    height: screenHeight/10,
                                    width: screenWidth/2.1,
                                    child: const Center(child: Text('Lorem IpsumLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt,',style: TextStyle(color: Colors.black,fontSize: 13),))),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: screenWidth/20),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: screenWidth/100),
                          child: const CircleAvatar(
                            radius: 35,
                            backgroundColor: Appcolors.circlepurple,
                          ),
                        ),
                      ],
                    )
                ),
              ),
            ),
            SizedBox(height: screenHeight/30),
            Center(
              child: Stack(
                children: [
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: screenHeight/80,vertical: screenHeight/130),
                      child: Container(
                          height: screenHeight/2.21,
                          width: screenWidth/1.86,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: Colors.grey, // Set the border color
                              width: 1.0, // Set the border width
                            ),
                          )
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                        height: screenHeight/2.23,
                        width: screenWidth/1.7,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.grey, // Set the border color
                            width: 1.0, // Set the border width
                          ),
                        )
                    ),
                  ),
                  Center(
                    child: Container(
                      height: screenHeight/2.30,
                      width: screenWidth/1.52,
                      decoration: BoxDecoration(
                        color: Appcolors.quotegreen,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.grey, // Set the border color
                          width: 1.0, // Set the border width
                        ),
                      ),
                      child: Center(child: Image.asset('assets/images/quote (2).png')),
                    ),
                  )

                ],
              ),
            ),
            SizedBox(height: screenHeight/10)
          ],
        ),
      ),



    );
  }
}
