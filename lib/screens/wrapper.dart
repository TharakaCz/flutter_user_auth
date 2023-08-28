import 'package:flutter/material.dart';
import 'package:flutter_user_auth/models/UserModel.dart';
import 'package:flutter_user_auth/screens/authentication/authenticate.dart';
import 'package:flutter_user_auth/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel?>(context);
    if (user == null) {
      return const Authenticate();
    }
    return const Home();
    // return Authenticate();
  }
}
