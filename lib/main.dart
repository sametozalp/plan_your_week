import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yap/Login.dart';
import 'package:yap/home_page.dart';
import 'package:yap/signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Home());
}

//PLAN YOUR WEEK

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
          '/Login': (context) => Login(),
          '/Signup': (context) => const SignUp(),
          '/': (context) => Login(),
        },
    );
  }
}