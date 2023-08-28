import 'package:flutter/material.dart';
import 'package:flutter_user_auth/constants/colors.dart';
import 'package:flutter_user_auth/constants/description.dart';
import 'package:flutter_user_auth/constants/styles.dart';
import 'package:flutter_user_auth/services/auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //ref auth class
  final AuthServices _auth = AuthServices();

//form Key
  final _formKey = GlobalKey<FormState>();
//email password state
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgBlack,
      appBar: AppBar(
        backgroundColor: bgBlack,
        title: const Text("Sign In"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 10, top: 30),
          child: Column(
            children: [
              const Text(
                description,
                style: descriptionStyle,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    "assets/user.png",
                    height: 200,
                  ),
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    //email
                    TextFormField(
                      validator: (val) =>
                          val?.isEmpty == true ? "Enter a valid email" : null,
                      onChanged: (val) {
                        setState(() {
                          email = val;
                        });
                      },
                    ),
                    //password
                    TextFormField(
                      validator: (val) =>
                          val!.length < 6 ? "Enter valid password" : null,
                      onChanged: (val) {
                        setState(() {
                          password = val;
                        });
                      },
                    ),
                    //goole
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Login with goole account",
                      style: descriptionStyle,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: GestureDetector(
                          //Sign in with google
                          onTap: () {},
                          child: Image.asset(
                            "assets/google.png",
                            height: 50,
                          ),
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Do not have a account ?",
                          style: descriptionStyle,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          //go to thr register page
                          onTap: () {},
                          child: const Text(
                            "REGISTER",
                            style: TextStyle(
                                color: boderBlue, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    //button
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                            color: bgBlack,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 2, color: boderYellow)),
                        child: const Center(
                            child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        )),
                      ),
                    ),

                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                            color: bgBlack,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 2, color: boderYellow)),
                        child: const Center(
                            child: Text(
                          "Login as a Guest",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ElevatedButton(
//         child: const Text("Sign Anonimously"),
//         onPressed: () async {
//           dynamic result = await _auth.signInAnonimously();
//           if (result == null) {
//             print("error in sign in anonimously");
//           } else {
//             print("sign in anonimously");
//             print(result.uid);
//           }
//         },
//       ),