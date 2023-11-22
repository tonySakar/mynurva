import 'package:flutter/material.dart';
import 'package:mynurva_project/auth/common_files.dart';
import 'package:mynurva_project/auth/log_sign.dart';
import 'package:mynurva_project/auth/login_page.dart';

class spalsh extends StatefulWidget {
  const spalsh({super.key});

  @override
  State<spalsh> createState() => _spalshState();
}

class _spalshState extends State<spalsh> {

  bool logoSmall = true;
  Color backgroundColor = Appcolors.appGreen;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(microseconds: 50), () {
      setState(() {
        logoSmall = false;
        backgroundColor = Appcolors.appGreen;
      });
      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          backgroundColor = Colors.white;
          slowColorTransition(); // Call the slowColorTransition method
        });
      });

      Future.delayed(const Duration(seconds: 4), () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const LogSign(),
        ));
      });
    });
  }

  void slowColorTransition() {
    int steps = 50; // Number of steps for the transition
    int delay = 50; // Delay between each step (adjust for the desired speed)

    for (int i = 0; i < steps; i++) {
      Future.delayed(Duration(milliseconds: i * delay), () {
        setState(() {
          if (i == steps - 1) {
            backgroundColor = Appcolors.appGreen; // Change to the desired color
          } else {
            backgroundColor = Color.lerp(Appcolors.appGreen,Colors.white,  i / steps)!;
          }
        });
      });
    }
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: AnimatedContainer(
            duration: const Duration(seconds: 4),
            width: logoSmall ? 100 : 200,
            // Adjust the small and big logo sizes
            height: logoSmall ? 100 : 200,
            alignment: Alignment.center,
            child: Center(
              child: Image.asset('assets/images/logo.png')
            ),
          ),
        ),
      );
    }
  }






