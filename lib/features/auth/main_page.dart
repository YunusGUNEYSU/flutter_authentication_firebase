import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/features/view/home_page.dart';

import '../view/login_page.dart';
import 'auth_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: StreamBuilder<User?>(builder:(context, snapshot) {
      if (snapshot.hasData) {
        return const LoginPage();
      }else {
        return const AuthPage();
      }
       
     }, stream: FirebaseAuth.instance.authStateChanges(),),
      
      );
  }
}