import 'dart:convert';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fraudsentry/screen/auth/passwordreset/forgetpassword.dart';
import 'package:fraudsentry/screen/auth/signup.dart';
import 'package:fraudsentry/screen/dash.dart';
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
    return Scaffold(
        // appBar: AppBar(),
        body: ListView(padding: const EdgeInsets.all(20), children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const signuppage()),
                    );
                  },
                  child: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade300)),
                      child: const Icon(
                        Icons.arrow_back_ios_sharp,
                        size: 17,
                      )),
                ),
                const SizedBox(
                  width: 60,
                ),
                const Text("Sign In",
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
                    Text("Hi,Welcome Back!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
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
                  "Lorem ipsum dolor sit amet, consectetur",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Form(
              key: formKey,
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
                      controller: emailaddress,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !value.contains('@') ||
                            !value.contains('.')) {
                          return 'Invalid Email';
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
                            borderRadius: BorderRadius.all(Radius.circular(10)),
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
                      controller: password,
                      obscureText: passobsrtruction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'password is required';
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
                            borderRadius: BorderRadius.all(Radius.circular(10)),
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
                                  builder: (context) => const forgetPaasword()),
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
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const mainDashboard()),
                        );
                      }
                      // registeruser();
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
                  "Don’t have an account?",
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
                    child: const Icon(
                      Icons.facebook,
                      color: Colors.green,
                      size: 30,
                    )),
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
                      color: Colors.black,
                      size: 30,
                    )),
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
      )
    ]));
  }
}
