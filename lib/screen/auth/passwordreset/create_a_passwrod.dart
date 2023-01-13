import 'package:flutter/material.dart';

class createPassword extends StatefulWidget {
  const createPassword({Key? key}) : super(key: key);

  @override
  State<createPassword> createState() => _createPasswordState();
}

class _createPasswordState extends State<createPassword> {
  bool passobsrtructionrest = true;

  // bool confirmpassnrest = true;
  passwordresetsucessdialogbox() {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.25,
          child: Dialog(
            backgroundColor: Colors.transparent,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  height: 230,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          "assets/illustration.png",
                          fit: BoxFit.contain,
                          width: 250,
                          height: 67,
                        ),
                      ),
                      Text(
                        "Success",
                        // style: TextStyle(fontSize: 16,),
                        textAlign: TextAlign.center,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Your password is succesfully created",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            width: 150,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Color(0xFF00AFB9),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Continue",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

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
                    Navigator.pop(context);
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
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Create a ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text("New Password",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Enter your new password",
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Passcode"),
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
                      hintText: 'Enter your passcode',
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
                    obscureText: passobsrtructionrest,

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
                            passobsrtructionrest = !passobsrtructionrest;
                          });
                        },
                        child: Icon(
                          passobsrtructionrest
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
                Text("Confirm Password"),
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
                    obscureText: passobsrtructionrest,

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
                      hintText: 'Confirm your Password',
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            passobsrtructionrest = !passobsrtructionrest;
                          });
                        },
                        child: Icon(
                          passobsrtructionrest
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
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    passwordresetsucessdialogbox();
                  },
                  child: Container(
                      // width: 200,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Color(0xFF00AFB9),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ],
            ),
          ],
        ),
      )
    ]));
  }
}
