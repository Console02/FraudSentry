import 'package:email_otp/email_otp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fraudsentry/main.dart';
import 'package:fraudsentry/screen/auth/otppage.dart';
import 'package:fraudsentry/screen/auth/signin.dart';
import 'package:fraudsentry/screen/dash.dart';
import 'package:fraudsentry/utils.dart';

final GlobalKey<FormState> formKey = GlobalKey<FormState>();
final TextEditingController fullname = TextEditingController();
final TextEditingController passwordd = TextEditingController();
final TextEditingController emailadd = TextEditingController();

class signuppage extends StatefulWidget {
  const signuppage({Key? key}) : super(key: key);

  @override
  State<signuppage> createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
  bool passobsrtructionsignin = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey();
  EmailOTP myauth = EmailOTP();

  sendOtp(String email) async {
    myauth.setConfig(
        appName: "Email OTP",
        userEmail: email,
        otpLength: 4,
        otpType: OTPType.digitsOnly);
    await myauth.sendOTP();
  }

  Future signUp() async {
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
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
      // .whenComplete(
      //   () => sendOtp(
      //     _emailController.text.trim(),
      //   ),
      // );
    } on FirebaseAuthException catch (e) {
      Utils().showSnackbar(e.message);
    }

    navigatorKey.currentState!.popUntil((route) => route.isFirst);
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
                          builder: (context) => const signinpage()),
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
                const Text("Register",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Create Account",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur",
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
                  const Text(
                    "Full Name",
                  ),
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
                      // controller:
                      //     fullnamecontroller,

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'FullName is required';
                        }
                        return null;
                      },
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white70,
                        hintText: 'Enter your Name',
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
                          return 'FullName is required';

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
                      controller: _passwordController,
                      obscureText: passobsrtructionsignin,
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
                              passobsrtructionsignin = !passobsrtructionsignin;
                            });
                          },
                          child: Icon(
                            passobsrtructionsignin
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
                    height: 50,
                  ),
                  InkWell(
                    onTap: () async {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        await signUp();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const mainDashboard(),
                          ),

                        );
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
                          "Create an Anccount",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
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
                  "or sign up with",
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
              height: 20,
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
            Center(
              child: Column(
                children: const [
                  Text(
                    "By signing up you agree to our",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(" Terms and Conditions of Use",
                      style: TextStyle(
                        fontSize: 13,
                      ))
                ],
              ),
            )
          ],
        ),
      )
    ]));
  }
}
