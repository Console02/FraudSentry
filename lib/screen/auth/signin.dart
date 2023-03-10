import 'dart:convert';

import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fraudsentry/main.dart';
import 'package:fraudsentry/screen/auth/passwordreset/forgetpassword.dart';
import 'package:fraudsentry/screen/auth/signup.dart';
import 'package:fraudsentry/screen/dash.dart';
import 'package:fraudsentry/utils.dart';

import 'package:http/http.dart' as http;

final GlobalKey<FormState> formKey = GlobalKey<FormState>();
final TextEditingController emailaddress = TextEditingController();
final TextEditingController password = TextEditingController();

class signinpage extends StatefulWidget {
  const signinpage({Key? key}) : super(key: key);

  @override
  State<signinpage> createState() => _signinpageState();
}

class _signinpageState extends State<signinpage> {
  bool passobsrtruction = true;
  bool value = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey();

  Future signIn() async {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(
          color: Color(0xFF00AFB9),
        ),
      ),
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e.message);
      Utils().showSnackbar(e.message);
    }

    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  Future? registeruser() async {
    final apiUrl = Uri.parse("https://fraudsentry.cyclic.app/signup");
    final response = await http.post(apiUrl,
        body: jsonEncode(
          <String, dynamic>{
            "fullName": "muyiwa eduardo",
            "email": "Lydiaerfc@gmail.com",
            "password": "edaurdo",

            // "lastname": "dedv"
          },
        ));
    print("siungup code ${response.statusCode}");
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Sign In",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text("Welcome back to FraudSentry!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.pan_tool,
                        color: Colors.yellow,
                        size: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Please enter your login credentials to access your account.The OAuth sign-in options should have Gmail, Facebook, and Twitter.",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Email Address"),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          color: Colors.grey.shade300,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      alignment: Alignment.center,
                      child: TextFormField(
                        controller: _emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email is required';
                          }
                          return null;
                        },
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white70,
                          hintText: 'Enter your Email Address',
                          hintStyle: TextStyle(fontSize: 11),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide.none),
                        ),
                        onChanged: (value) {
                          // inputfullname = value;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text("Password"),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          color: Colors.grey.shade300,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      alignment: Alignment.center,
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: passobsrtruction,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password is required';
                          }
                          return null;
                        },
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white70,
                          hintText: 'Enter your Password',
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                passobsrtruction = !passobsrtruction;
                              });
                            },
                            child: Icon(
                              passobsrtruction
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.black,
                            ),
                          ),
                          hintStyle: const TextStyle(fontSize: 11),
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide.none),
                        ),
                        onChanged: (value) {
                          // inputfullname = value;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: this.value,
                              onChanged: (bool? value) {
                                setState(() {
                                  this.value = value!;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Remember Me",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const forgetPaasword()),
                              );
                            },
                            child: const Text("Forgot Password",
                                style: TextStyle(fontSize: 12))),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      onTap: () async {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          await signIn();
                        }
                      },
                      child: Container(
                          // width: 200,
                          height: 45,
                          decoration: const BoxDecoration(
                            color: Color(0xFF00AFB9),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "Sign In",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don???t have an account?",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const signuppage()),
                      );
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(fontSize: 13, color: Color(0xFF8E8E8E)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 50,
                    child: Divider(
                      color: Colors.grey.shade300,
                      thickness: 1,
                    ),
                  ),
                  Text(
                    "or sign in with",
                    style: TextStyle(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: Divider(
                      color: Colors.grey.shade300,
                      thickness: 1,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade200,
                        border: Border.all(color: Colors.grey.shade300)),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.google,
                        color: Colors.yellow.shade600,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade200,
                        border: Border.all(color: Colors.grey.shade300)),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.apple,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade200,
                          border: Border.all(color: Colors.grey.shade300)),
                      child: const Icon(
                        Icons.facebook,
                        color: Colors.blue,
                        size: 30,
                      )),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
