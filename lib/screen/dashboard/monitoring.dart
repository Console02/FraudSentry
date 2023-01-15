import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class monitoringPage extends StatefulWidget {
  const monitoringPage({Key? key}) : super(key: key);

  @override
  State<monitoringPage> createState() => _monitoringPageState();
}

class _monitoringPageState extends State<monitoringPage> {
  bool isSwitched = false;
  bool isSwitched1 = false;
  bool isSwitched2 = true;
  bool isSwitched3 = false;
  bool isSwitched4 = false;
  bool isSwitched5 = false;

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  void toggleSwitch1(bool value) {
    if (isSwitched1 == false) {
      setState(() {
        isSwitched1 = true;
      });
    } else {
      setState(() {
        isSwitched1 = false;
      });
    }
  }

  void toggleSwitch2(bool value) {
    if (isSwitched2 == false) {
      setState(() {
        isSwitched2 = true;
      });
    } else {
      setState(() {
        isSwitched2 = false;
      });
    }
  }

  void toggleSwitch3(bool value) {
    if (isSwitched3 == false) {
      setState(() {
        isSwitched3 = true;
      });
    } else {
      setState(() {
        isSwitched3 = false;
      });
    }
  }

  void toggleSwitch4(bool value) {
    if (isSwitched4 == false) {
      setState(() {
        isSwitched4 = true;
      });
    } else {
      setState(() {
        isSwitched4 = false;
      });
    }
  }

  void toggleSwitch5(bool value) {
    if (isSwitched5 == false) {
      setState(() {
        isSwitched5 = true;
      });
    } else {
      setState(() {
        isSwitched5 = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.only(right: 5, top: 20, left: 20),
          child: Text(
            "Monitoring",
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 5, top: 20, left: 20),
            child: Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300)),
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                  size: 20,
                )),
          ),
        ),
        elevation: 0,
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(
        //       right: 25,
        //       top: 30,
        //     ),
        //     child: Container(
        //         width: 40.0,
        //         height: 40.0,
        //         decoration: BoxDecoration(
        //             shape: BoxShape.circle,
        //             color: Colors.white,
        //             border: Border.all(color: Colors.grey.shade300)),
        //         child: Icon(
        //           Icons.more_horiz,
        //           color: Colors.black,
        //           size: 20,
        //         )),
        //   )
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Alerts",
                  style: TextStyle(fontSize: 15),
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Transform.scale(
                      scale: 1,
                      child: Switch(
                        onChanged: toggleSwitch,
                        value: isSwitched,
                        activeColor: const Color(0xff00AFB9),
                        activeTrackColor: Colors.grey.shade300,
                        inactiveThumbColor: Colors.black,
                        inactiveTrackColor: Colors.grey.shade300,
                      )),
                ]),
              ],
            ),
            IntrinsicHeight(
              child: Row(
                children: const [
                  VerticalDivider(
                    color: Colors.red,
                    thickness: 4,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Suspicious Login on your GTBank App'),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            IntrinsicHeight(
              child: Row(
                children: const [
                  VerticalDivider(
                    color: Colors.red,
                    thickness: 4,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('An unknown IP Address login'),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            IntrinsicHeight(
              child: Row(
                children: const [
                  VerticalDivider(
                    color: Colors.red,
                    thickness: 4,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('A suspected account has been flagged'),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            IntrinsicHeight(
              child: Row(
                children: const [
                  VerticalDivider(
                    color: Colors.red,
                    thickness: 4,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Change login details for zenith'),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            IntrinsicHeight(
              child: Row(
                children: const [
                  VerticalDivider(
                    color: Colors.red,
                    thickness: 4,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Your bank pin has been compromised'),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Card Transactions",
                  style: TextStyle(fontSize: 15),
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Transform.scale(
                      scale: 1,
                      child: Switch(
                        onChanged: toggleSwitch1,
                        value: isSwitched1,
                        activeColor: const Color(0xff00AFB9),
                        activeTrackColor: Colors.grey.shade300,
                        inactiveThumbColor: Colors.black,
                        inactiveTrackColor: Colors.grey.shade300,
                      )),
                ]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Suspicious Login",
                  style: TextStyle(fontSize: 15),
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Transform.scale(
                      scale: 1,
                      child: Switch(
                        onChanged: toggleSwitch2,
                        value: isSwitched2,
                        activeColor: const Color(0xff00AFB9),
                        activeTrackColor: Colors.grey.shade300,
                        inactiveThumbColor: Colors.black,
                        inactiveTrackColor: Colors.grey.shade300,
                      )),
                ]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Notifications",
                  style: TextStyle(fontSize: 15),
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Transform.scale(
                      scale: 1,
                      child: Switch(
                        onChanged: toggleSwitch3,
                        value: isSwitched3,
                        activeColor: const Color(0xff00AFB9),
                        activeTrackColor: Colors.grey.shade300,
                        inactiveThumbColor: Colors.black,
                        inactiveTrackColor: Colors.grey.shade300,
                      )),
                ]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Location",
                  style: TextStyle(fontSize: 15),
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Transform.scale(
                      scale: 1,
                      child: Switch(
                        onChanged: toggleSwitch4,
                        value: isSwitched4,
                        activeColor: const Color(0xff00AFB9),
                        activeTrackColor: Colors.grey.shade300,
                        inactiveThumbColor: Colors.black,
                        inactiveTrackColor: Colors.grey.shade300,
                      )),
                ]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Third Party Autheticator",
                  style: TextStyle(fontSize: 15),
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Transform.scale(
                      scale: 1,
                      child: Switch(
                        onChanged: toggleSwitch5,
                        value: isSwitched5,
                        activeColor: const Color(0xff00AFB9),
                        activeTrackColor: Colors.grey.shade300,
                        inactiveThumbColor: Colors.black,
                        inactiveTrackColor: Colors.grey.shade300,
                      )),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
