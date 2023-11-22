import 'package:flutter/material.dart';
import 'package:mynurva_project/auth/common_files.dart';

class SingleResource extends StatefulWidget {
  const SingleResource({super.key});

  @override
  State<SingleResource> createState() => _SingleResourceState();
}

class _SingleResourceState extends State<SingleResource> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    print('width $screenWidth');
    print('hight $screenHeight');
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight /15),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: screenWidth/14),
              child: Image.asset('assets/images/logoname.png'),
            ),
            SizedBox(height: screenHeight/80),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: screenWidth/14),
              child: const Text('Title of Resource',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ),
            SizedBox(height: screenHeight/70),
            Center(
              child: Container(
                height: screenHeight/1.8,
                width: screenWidth/1.19,
                decoration: BoxDecoration(
                  color: Appcolors.quotegreen,
                  borderRadius: BorderRadius.circular(30),

                ),
                child:  Center(
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade100,
                      radius: 20,
                      child: const Icon(Icons.play_arrow,color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight/70),
            Center(
              child: Container(
                height:screenHeight/5 ,
                  width:screenWidth/1.14,
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
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: screenWidth/100),
                          child: const CircleAvatar(
                            radius: 35,
                            backgroundColor: Appcolors.quoteBrown,
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
                        Icon(Icons.arrow_forward_ios_outlined)

                      ],
                    )
                ),
              ),
            ),
            Center(
              child: Container(
                height:screenHeight/5 ,
                width:screenWidth/1.14, // Set the width of each item
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
                        const Icon(Icons.arrow_back_ios),
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
                            backgroundColor: Appcolors.quotegreen,
                          ),
                        ),
                      ],
                    )
                ),
              ),
            ),
            Center(
              child: Container(
                height:screenHeight/5 ,
                width:screenWidth/1.14, // Set the width of each item
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
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: screenWidth/100),
                          child: const CircleAvatar(
                            radius: 35,
                            backgroundColor: Appcolors.quoteBrown,
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
            ),
            SizedBox(height: screenHeight/70),
            Center(
              child: Container(
                height: screenHeight/8,
                width: screenWidth/1.22,
                decoration: BoxDecoration(
                  color: Appcolors.quoteBrown,
                  borderRadius: BorderRadius.circular(30),
                ),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('How are you feeling todaty?',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                      ],
                    ),
                    SizedBox(height: screenHeight/100,),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text('Track your mood',style: TextStyle(color: Appcolors.brown,fontSize: 20,fontWeight: FontWeight.bold,),),
                         SizedBox(width: screenWidth/50),
                          const Icon(Icons.arrow_forward_outlined,color: Appcolors.brown),
                        ],
                      ),
                    ),


                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight/70),
            Center(
              child: Container(
                height: screenHeight/10,
                width: screenWidth/5.22,
                color: Colors.blue,
              ),
            )



          ],
        ),
      ),


    );
  }
}
