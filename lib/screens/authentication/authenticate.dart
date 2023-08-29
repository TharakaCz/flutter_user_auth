import 'package:flutter/material.dart';
import 'package:flutter_user_auth/screens/authentication/login.dart';
import 'package:flutter_user_auth/screens/authentication/registration.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool signInPage = true;

  //toggle pages
  void switchPages() {
    setState(() {
      signInPage = !signInPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (signInPage == true) {
      return Login(toggle: switchPages);
    } else {
      return Registration(toggle: switchPages);
    }
  }
}
