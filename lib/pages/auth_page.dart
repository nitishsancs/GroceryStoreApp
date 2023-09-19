import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:groceryapp/pages/login_page.dart';
// import 'package:groceryapp/pages/register_page.dart';
// import 'package:nitchu/pages/login_page.dart';

import 'home_page.dart';
import 'login_or_register.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user is logged in
          if (snapshot.hasData) {
            return HomePage();
            //user is not logged in
          } else {
            // ignore: prefer_const_constructors
            return LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}