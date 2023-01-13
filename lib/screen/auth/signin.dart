import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fraudsentry/screen/auth/passwordreset/forgetpassword.dart';
import 'package:fraudsentry/screen/auth/signup.dart';
import 'package:fraudsentry/screen/dash.dart';

class signinpage extends StatefulWidget {
  const signinpage({Key? key}) : super(key: key);

  @override
  State<signinpage> createState() => _signinpageState();
}

class _signinpageState extends State<signinpage> {
  bool passobsrtruction = true;
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: ListView(padding: EdgeInsets.all(20), children: <Widget>[
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
                      child: Icon(
                        Icons.arrow_back_ios_sharp,
                        size: 17,
                      )),
                ),
                SizedBox(
                  width: 60,
                ),
                Text("Sign In",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
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
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Email Address"),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  alignment: Alignment.center,
                  child: TextFormField(
                    // controller:
                    //     fullnamecontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'FullName is required';
                      }
                      return null;
                    },
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
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
                SizedBox(
                  height: 15,
                ),
                Text("Password"),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  alignment: Alignment.center,
                  child: TextFormField(
                    // controller:
                    //     fullnamecontroller,
                    obscureText: passobsrtruction,

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'FullName is required';
                      }
                      return null;
                    },
                    style: TextStyle(color: Colors.black),
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
                SizedBox(
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
                        SizedBox(
                          width: 10,
                        ),
                        Text(
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
                        child: Text("Forgot Password",
                            style: TextStyle(fontSize: 12))),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    // if (formKey.currentState!
                    //     .validate()) {
                    //   // If the form is valid, display a snackbar. In the real world,
                    //   // you'd often call a server or save the information in a database.
                    //   // print(
                    //   //     "reg validation sucessful");
                    //   // email.clear();
                    //   // password.clear();
                    //   // fullnamecontroller.clear();
                    //   // setState(() {
                    //   //   EasyLoading.show(
                    //   //     status:
                    //   //         "Fetching your data",
                    //   //   );
                    //   });

                    // phonenumbercontroller.clear();
                    // }
                    // formKey.currentState?.save();
                  },
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const mainDashboard()),
                      );
                    },
                    child: Container(
                        // width: 200,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Color(0xFF00AFB9),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Sign In",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
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
                  child: Text(
                    "Sign up",
                    style: TextStyle(fontSize: 13, color: Color(0xFF8E8E8E)),
                  ),
                ),
              ],
            ),
            SizedBox(
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
            SizedBox(
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
                    child: Icon(
                      Icons.facebook,
                      color: Colors.green,
                      size: 30,
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade200,
                        border: Border.all(color: Colors.grey.shade300)),
                    child: Icon(
                      Icons.facebook,
                      color: Colors.black,
                      size: 30,
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade200,
                        border: Border.all(color: Colors.grey.shade300)),
                    child: Icon(
                      Icons.facebook,
                      color: Colors.blue,
                      size: 30,
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      )
    ]));
  }
}
