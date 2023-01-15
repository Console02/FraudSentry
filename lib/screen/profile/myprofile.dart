// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fraudsentry/screen/profile/components/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ProfileColor.subColor,
      body: Container(
          height: h,
          child: Stack(
            children: [
              _topSection(),
              _profileAvatar(),
              _menuItem(),
              _bottomBtn(),
            ],
          )),
    );
  }

  _topSection() {
    return Positioned(
      child: Container(
        width: MediaQuery.of(context).size.width - 30,
        child: Container(
            child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/profile_img/dir.png"))),
            ),
            SizedBox(
              width: 120,
            ),
            Text(
              "Profile",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: ProfileColor.textColor),
            ),
          ],
        )),
      ),
    );
  }

  _profileAvatar() {
    return Positioned(
        child: Center(
            child: Column(children: [
      Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: ProfileColor.subColor, width: 2),
            color: ProfileColor.mainColor,
            image: DecorationImage(
                image: AssetImage("assets/profile_img/avatar.png"))),
      ),
      SizedBox(height: 15),
      Text(
        "Brooklyn Simone",
        style: TextStyle(
            fontSize: 29,
            fontWeight: FontWeight.w500,
            color: ProfileColor.textColor),
      ),
      SizedBox(height: 10),
      Text(
        "@brooklyn",
        style: TextStyle(fontSize: 14, color: ProfileColor.textColor),
      ),
    ])));
  }

  _menuItem() {
    return Positioned(
        child: Container(
      width: MediaQuery.of(context).size.width - 30,
      child: Container(
          child: Column(children: [
        Text(
          "Personal Info",
          style: TextStyle(fontSize: 12, color: Colors.grey.withOpacity(0.8)),
        ),
        InkWell(
          onTap: () {
            //  MainProfilePage()
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.only(top: 15, bottom: 15),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/profile_img/profile.png"))),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Your Profile",
                  style: TextStyle(fontSize: 16, color: ProfileColor.textColor),
                ),
              ],
            );
          },
        ),
        Divider(thickness: 2, color: Colors.grey.withOpacity(0.7)),
        InkWell(
          onTap: () {
            //  MainProfilePage()
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.only(top: 15, bottom: 15),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/profile_img/upgrade.png"))),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Upgrade Account",
                  style: TextStyle(fontSize: 16, color: ProfileColor.textColor),
                ),
              ],
            );
          },
        ),
        Divider(thickness: 2, color: Colors.grey.withOpacity(0.7)),
        Text(
          "Security",
          style: TextStyle(fontSize: 12, color: Colors.grey.withOpacity(0.8)),
        ),
        InkWell(
          onTap: () {
            //  Face Id()
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.only(top: 15, bottom: 15),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/profile_img/auth.png"))),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Face Id",
                  style: TextStyle(fontSize: 16, color: ProfileColor.textColor),
                ),
                SizedBox(
                  width: 50,
                ),
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                  activeTrackColor: Colors.grey,
                  activeColor: ProfileColor.mainColor,
                ),

                //
              ],
            );
          },
        ),
        Divider(thickness: 2, color: Colors.grey.withOpacity(0.7)),
        InkWell(
          onTap: () {
            //  FingerPrint())
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.only(top: 15, bottom: 15),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/profile_img/auth.png"))),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Fingerprint",
                  style: TextStyle(fontSize: 16, color: ProfileColor.textColor),
                ),
                SizedBox(
                  width: 50,
                ),
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                  activeTrackColor: Colors.grey,
                  activeColor: ProfileColor.mainColor,
                ),

                //
              ],
            );
          },
        ),
        Divider(thickness: 2, color: Colors.grey.withOpacity(0.7)),
        InkWell(
          onTap: () {
            //  ChangePassword())
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.only(top: 15, bottom: 15),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/profile_img/change_pass.png"))),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Change Password",
                  style: TextStyle(fontSize: 16, color: ProfileColor.textColor),
                ),
              ],
            );
          },
        ),
        InkWell(
          onTap: () {
            //  Forget Password()
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.only(top: 15, bottom: 15),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/profile_img/forget_pass.png"))),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Forget Password",
                  style: TextStyle(fontSize: 16, color: ProfileColor.textColor),
                ),
              ],
            );
          },
        ),
        Divider(thickness: 2, color: Colors.grey.withOpacity(0.7)),
        Text(
          "General",
          style: TextStyle(fontSize: 12, color: Colors.grey.withOpacity(0.8)),
        ),
        InkWell(
          onTap: () {
            //  Notification()
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.only(top: 15, bottom: 15),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/profile_img/notify.png"))),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Notification",
                  style: TextStyle(fontSize: 16, color: ProfileColor.textColor),
                ),
              ],
            );
          },
        ),
        Divider(thickness: 2, color: Colors.grey.withOpacity(0.7)),
        InkWell(
          onTap: () {
            //  Languages()
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.only(top: 15, bottom: 15),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/profile_img/lang.png"))),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Languages",
                  style: TextStyle(fontSize: 16, color: ProfileColor.textColor),
                ),
              ],
            );
          },
        ),
        Divider(thickness: 2, color: Colors.grey.withOpacity(0.7)),
        InkWell(
          onTap: () {
            //  Notification()
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.only(top: 15, bottom: 15),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/profile_img/help.png"))),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Help and Support",
                  style: TextStyle(fontSize: 16, color: ProfileColor.textColor),
                ),
              ],
            );
          },
        ),
        Divider(thickness: 2, color: Colors.grey.withOpacity(0.7))
      ])),
    ));
  }

  _bottomBtn() {
    return Positioned(
      child: Container(
          child: InkWell(
        onTap: () {
          //logout()
        },
        child: Container(
            // width: 200,
            height: 45,
            alignment: Alignment.center,
            child: Text(
              "Log Out",
              style: TextStyle(color: ProfileColor.auxColor),
            )),
      )),
    );
  }
}
