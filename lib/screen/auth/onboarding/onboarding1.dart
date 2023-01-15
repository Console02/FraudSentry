import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fraudsentry/screen/auth/signin.dart';
// import 'package:dotted_border/dotted_border.dart';

class onboardingpage1 extends StatefulWidget {
  const onboardingpage1({Key? key}) : super(key: key);

  @override
  State<onboardingpage1> createState() => _onboardingpage1State();
}

class _onboardingpage1State extends State<onboardingpage1> {
  bool onboardingpage1 = true;
  bool onboardingpage2 = false;
  bool onboardingpage3 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [
              0.3,
              0.7,
              // 0.9,
            ],
            colors: [
              Color(0xFF0DD2DD),
              Color(0xFF014B50),
            ],
          ),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      onboardingpage3
                          ? Container()
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    onboardingpage1
                                        ? setState(() {
                                            onboardingpage1 = false;
                                            onboardingpage2 = true;
                                            onboardingpage3 = false;
                                          })
                                        : setState(() {
                                            onboardingpage1 = false;
                                            onboardingpage2 = false;
                                            onboardingpage3 = true;
                                          });
                                  },
                                  child: Text(
                                    "Skip",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                      SizedBox(
                        height: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          onboardingpage3
                              ? SizedBox(
                                  width: 250,
                                  child: Text(
                                    "CHAT WITH US REAL-TIME",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              : SizedBox(
                                  width: 250,
                                  child: Text(
                                    "PROTECT YOUR FINANCE",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 250,
                            child: Text(
                              "Lorem ipsum dolor sit amet consectetur. Placerat cras dolor pellentesque est diam mattis massa sed. Quam posuere nullam tellus sed velit.",
                              style: TextStyle(color: Colors.white60),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      onboardingpage2
                          ? Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      onboardingpage1 = true;
                                      onboardingpage2 = false;
                                      onboardingpage3 = false;
                                    });
                                  },
                                  child: Container(
                                    width: 10.0,
                                    height: 10.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey,
                                        border: Border.all(
                                            color: Colors.grey.shade300)),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      onboardingpage1 = false;
                                      onboardingpage2 = true;
                                      onboardingpage3 = false;
                                    });
                                  },
                                  child: Container(
                                    width: 30,
                                    height: 8,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      onboardingpage1 = false;
                                      onboardingpage2 = false;
                                      onboardingpage3 = true;
                                    });
                                  },
                                  child: Container(
                                    width: 10.0,
                                    height: 10.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey,
                                        border: Border.all(
                                            color: Colors.grey.shade300)),
                                  ),
                                ),
                              ],
                            )
                          : onboardingpage3
                              ? Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          onboardingpage1 = true;
                                          onboardingpage2 = false;
                                          onboardingpage3 = false;
                                        });
                                      },
                                      child: Container(
                                        width: 10.0,
                                        height: 10.0,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey,
                                            border: Border.all(
                                                color: Colors.grey.shade300)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          onboardingpage1 = false;
                                          onboardingpage2 = true;
                                          onboardingpage3 = false;
                                        });
                                      },
                                      child: Container(
                                        width: 10.0,
                                        height: 10.0,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey,
                                            border: Border.all(
                                                color: Colors.grey.shade300)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          onboardingpage1 = false;
                                          onboardingpage2 = false;
                                          onboardingpage3 = true;
                                        });
                                      },
                                      child: Container(
                                        width: 30,
                                        height: 8,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          onboardingpage1 = true;
                                          onboardingpage2 = false;
                                          onboardingpage3 = false;
                                        });
                                      },
                                      child: Container(
                                        width: 30,
                                        height: 8,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          onboardingpage1 = false;
                                          onboardingpage2 = true;
                                          onboardingpage3 = false;
                                        });
                                      },
                                      child: Container(
                                        width: 10.0,
                                        height: 10.0,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey,
                                            border: Border.all(
                                                color: Colors.grey.shade300)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          onboardingpage1 = false;
                                          onboardingpage2 = false;
                                          onboardingpage3 = true;
                                        });
                                      },
                                      child: Container(
                                        width: 10.0,
                                        height: 10.0,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey,
                                            border: Border.all(
                                                color: Colors.grey.shade300)),
                                      ),
                                    ),
                                  ],
                                ),
                      Column(
                        children: [
                          onboardingpage2
                              ? Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 190),
                                      child: Container(
                                        height: 150,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20)),
                                            border: Border.all(
                                                color: Colors.grey.shade300)),
                                        // child: DottedBorder(
                                        //   radius: Radius.circular(20),
                                        //   color: Colors
                                        //       .white54, //color of dotted/dash line
                                        //   strokeWidth:
                                        //       1, //thickness of dash/dots
                                        //   dashPattern: [1, 3],
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              onboardingpage1 = false;
                                              onboardingpage2 = false;
                                              onboardingpage3 = true;
                                            });
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  // color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors
                                                          .grey.shade300)),
                                              child: Icon(
                                                Icons.circle,
                                                color: Colors.white,
                                                size: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      // ),
                                    ),
                                    Image.asset(
                                      "assets/Padlock.png",
                                      width: 300,
                                      height: 300,
                                    ),
                                  ],
                                )
                              : onboardingpage3
                                  ? Column(
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const signinpage()),
                                            );
                                          },
                                          child: Container(
                                              // width: 200,
                                              height: 45,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(5),
                                                ),
                                              ),
                                              alignment: Alignment.center,
                                              child: Text(
                                                "Get Started",
                                                style: TextStyle(
                                                    color: Color(0xFF00AFB9)),
                                              )),
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 190),
                                              child: Container(
                                                height: 150,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(20),
                                                            topRight:
                                                                Radius.circular(
                                                                    20)),
                                                    border: Border.all(
                                                        color: Colors
                                                            .grey.shade300)),
                                                // child: DottedBorder(
                                                //   radius: Radius.circular(20),
                                                //   color: Colors
                                                //       .white54, //color of dotted/dash line
                                                //   strokeWidth:
                                                //       1, //thickness of dash/dots
                                                //   dashPattern: [1, 3],
                                                child: InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      onboardingpage1 = false;
                                                      onboardingpage2 = false;
                                                      onboardingpage3 = false;
                                                    });
                                                  },
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 90),
                                                    child: Container(
                                                      width: 30.0,
                                                      height: 30.0,
                                                      decoration: BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          // color: Colors.white,
                                                          border: Border.all(
                                                              color: Colors.grey
                                                                  .shade300)),
                                                      child: Icon(
                                                        Icons.circle,
                                                        color: Colors.white,
                                                        size: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              // ),
                                            ),
                                            Image.asset(
                                              "assets/Chatting.png",
                                              width: 300,
                                              height: 300,
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  : Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 190),
                                          child: Container(
                                            height: 150,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    topRight:
                                                        Radius.circular(20)),
                                                border: Border.all(
                                                    color:
                                                        Colors.grey.shade300)),
                                            // child: DottedBorder(
                                            //   radius: Radius.circular(20),
                                            //   color: Colors
                                            //       .white54, //color of dotted/dash line
                                            //   strokeWidth:
                                            //       1, //thickness of dash/dots
                                            //   dashPattern: [1, 3],
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  onboardingpage1 = false;
                                                  onboardingpage2 = true;
                                                  onboardingpage3 = false;
                                                });
                                              },
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(top: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: 30.0,
                                                      height: 30.0,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        // color: Colors.white,
                                                        border: Border.all(
                                                            color: Colors
                                                                .grey.shade300),
                                                      ),
                                                      child: Icon(
                                                        Icons.circle,
                                                        color: Colors.white,
                                                        size: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          // ),
                                        ),
                                        Image.asset(
                                          "assets/Padlock.png",
                                          width: 300,
                                          height: 300,
                                        ),
                                      ],
                                    ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}
