import 'package:flutter/material.dart';
import 'package:fraudsentry/screen/auth/signin.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OnBoardBckGrd(),
      ),
    );
  }
}

class OnBoardBckGrd extends StatefulWidget {
  const OnBoardBckGrd({
    Key? key,
  }) : super(key: key);

  @override
  State<OnBoardBckGrd> createState() => _OnBoardBckGrdState();
}

class _OnBoardBckGrdState extends State<OnBoardBckGrd> {
  PageController? controller = PageController();
  int currentIndex = 0;

  Future<void> goToSignIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('hasViewOnBoarding', true);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const signinpage(),
      ),
    );
  }

  // List<Widget> pages =

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.05,
                1.0,
              ],
              colors: [
                Color(0xFF00AFB9),
                Color(0xFF025054),
              ],
            ),
          ),
          child: PageView(),
        ),
        Positioned(
          child: Image.asset(
            "assets/images/top_circle.png",
          ),
        ),
        Positioned(
          top: 120,
          child: Image.asset(
            "assets/images/bottom_circle.png",
          ),
        ),
        PageView(
          controller: controller,
          onPageChanged: ((value) {
            setState(() {
              currentIndex = value;
            });
          }),
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 24.0,
                left: 24.0,
                right: 24.0,
              ),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          const SizedBox(
                            width: 250,
                            child: Text(
                              "PROTECT YOUR\nFINANCE",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(
                            width: 250,
                            child: Text(
                              "Lorem ipsum dolor sit amet consectetur. Placerat cras dolor pellentesque est diam mattis massa sed. Quam posuere nullam tellus sed velit.",
                              style: TextStyle(color: Colors.white60),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 25,
                                  height: 8,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 8.0,
                                  height: 8.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withOpacity(0.3),
                                  ),
                                ),
                                Container(
                                  width: 8.0,
                                  height: 8.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withOpacity(0.3),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 190),
                            child: Container(
                              height: 150,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  border:
                                      Border.all(color: Colors.grey.shade300)),
                              child: InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10),
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
                                              color: Colors.grey.shade300),
                                        ),
                                        child: const Icon(
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
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    top: 275,
                    left: 45,
                    child: Image.asset(
                      "assets/Padlock.png",
                      scale: 1.2,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 24.0,
                left: 24.0,
                right: 24.0,
              ),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          const SizedBox(
                            width: 250,
                            child: Text(
                              "PROTECT YOUR\nFINANCE",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(
                            width: 250,
                            child: Text(
                              "Lorem ipsum dolor sit amet consectetur. Placerat cras dolor pellentesque est diam mattis massa sed. Quam posuere nullam tellus sed velit.",
                              style: TextStyle(color: Colors.white60),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 8.0,
                                  height: 8.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withOpacity(0.3),
                                  ),
                                ),
                                Container(
                                  width: 25,
                                  height: 8,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 8.0,
                                  height: 8.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withOpacity(0.3),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 190),
                            child: Container(
                              height: 150,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  border:
                                      Border.all(color: Colors.grey.shade300)),
                              child: InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Container(
                                    width: 30.0,
                                    height: 30.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        // color: Colors.white,
                                        border: Border.all(
                                            color: Colors.grey.shade300)),
                                    child: const Icon(
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
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    top: 275,
                    left: 45,
                    child: Image.asset(
                      "assets/Secure Shield.png",
                      scale: 1.3,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 24.0,
                left: 24.0,
                right: 24.0,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 150,
                    left: 75,
                    child: Image.asset(
                      "assets/Chatting.png",
                      scale: 1.5,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          const SizedBox(
                            width: 250,
                            child: Text(
                              "CHAT WITH US REAL-TIME",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(
                            width: 250,
                            child: Text(
                              "Lorem ipsum dolor sit amet consectetur. Placerat cras dolor pellentesque est diam mattis massa sed. Quam posuere nullam tellus sed velit.",
                              style: TextStyle(color: Colors.white60),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  child: Container(
                                    width: 8.0,
                                    height: 8.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white.withOpacity(0.3),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  child: Container(
                                    width: 8.0,
                                    height: 8.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white.withOpacity(0.3),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 25,
                                  height: 8,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              goToSignIn();
                            },
                            child: Container(
                                // width: 200,
                                height: 45,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: const Text(
                                  "Get Started",
                                  style: TextStyle(color: Color(0xFF00AFB9)),
                                )),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 100),
                            child: Container(
                              height: 150,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  border:
                                      Border.all(color: Colors.grey.shade300)),
                              child: InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 90),
                                  child: Container(
                                    width: 30.0,
                                    height: 30.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        // color: Colors.white,
                                        border: Border.all(
                                            color: Colors.grey.shade300)),
                                    child: const Icon(
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
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        currentIndex == 2.0
            ? Container()
            : Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 32.0,
                  horizontal: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        print(controller!.page.runtimeType);
                        setState(() {
                          controller!.nextPage(
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeIn,
                          );
                          currentIndex += 1;
                        });
                      },
                      child: const Text(
                        "Skip",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
      ],
    );
  }
}
