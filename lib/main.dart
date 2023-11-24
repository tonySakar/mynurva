import 'package:flutter/material.dart';
import 'package:mynurva_project/auth/create_password.dart';
import 'package:mynurva_project/auth/login_page.dart';
import 'package:mynurva_project/auth/signup_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mynurva_project/auth/userId.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return    const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: SignUp ());
  }
}
