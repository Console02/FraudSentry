import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fraudsentry/screen/dashboard/profile/change_password/change_password.dart';
import 'package:fraudsentry/screen/dashboard/profile/edit_profile/edit_profile.dart';
import 'package:fraudsentry/screen/dashboard/profile/face_id/face_id.dart';
import 'package:fraudsentry/screen/dashboard/profile/fngerprint/finger_print.dart';
import 'package:fraudsentry/screen/dashboard/profile/forgot_password/forgot_password.dart';
import 'package:fraudsentry/screen/dashboard/profile/help_support/help_support.dart';
import 'package:fraudsentry/screen/dashboard/profile/languages/languages.dart';
import 'package:fraudsentry/screen/dashboard/profile/notification/notification.dart';
import 'package:fraudsentry/screen/dashboard/profile/shared/colors.dart';
import 'package:fraudsentry/screen/dashboard/profile/upgrade_account/upgrade_account.dart';
import 'package:fraudsentry/screen/dashboard/profile/widgets/profile_details.dart';
import 'package:fraudsentry/screen/dashboard/profile/widgets/profile_section.dart';
import 'package:fraudsentry/screen/dashboard/profile/widgets/section_content.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  bool faceIdOn = false;
  bool fingerPrintOn = false;

  Future signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          iconTheme: const IconThemeData(color: Colors.black),
          title: Text(
            "Profile",
            style: GoogleFonts.montserrat(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ProfileDetails(
                userAvatar: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey.shade100,
                  child: const Icon(
                    Icons.person,
                    size: 32,
                  ),
                ),
                userName: "Brooklyn Simmons",
                userId: "@Broklyn",
              ),
              const SizedBox(
                height: 10,
              ),
              ProfileSection(
                sectionHeading: "Personal Info",
                sectionChildren: [
                  SectionContent(
                    sectionName: "Your Profile",
                    sectionLeading: const Icon(Icons.person),
                    onSectionTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditProfile(),
                        ),
                      );
                    },
                  ),
                  SectionContent(
                    sectionName: "Upgrade Account",
                    sectionLeading: const Icon(Icons.download),
                    onSectionTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UpgradeAccount(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              ProfileSection(
                sectionHeading: "Security",
                sectionChildren: [
                  SectionContent(
                    sectionName: "Face Id",
                    sectionLeading: const Icon(Icons.flip),
                    onSectionTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FaceID(),
                        ),
                      );
                    },
                    sectionTrailing: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        faceIdOn ? Icons.toggle_on : Icons.toggle_off,
                        size: 36,
                        color: faceIdOn ? kPrimaryColor : Colors.black,
                      ),
                    ),
                    onTrailingTap: () {
                      setState(() {
                        faceIdOn = !faceIdOn;
                      });
                    },
                  ),
                  SectionContent(
                    sectionName: "Fingerprint",
                    sectionLeading: const Icon(Icons.fingerprint),
                    onSectionTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FingerPrint(),
                        ),
                      );
                    },
                    sectionTrailing: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        fingerPrintOn ? Icons.toggle_on : Icons.toggle_off,
                        size: 36,
                        color: fingerPrintOn ? kPrimaryColor : Colors.black,
                      ),
                    ),
                    onTrailingTap: () {
                      setState(() {
                        fingerPrintOn = !fingerPrintOn;
                      });
                    },
                  ),
                  SectionContent(
                    sectionName: "Change Password",
                    sectionLeading: const Icon(Icons.lock),
                    onSectionTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChangePassword(),
                        ),
                      );
                    },
                  ),
                  SectionContent(
                    sectionName: "Forgot Password",
                    sectionLeading: const Icon(Icons.lock_open),
                    onSectionTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgotPassword(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              ProfileSection(
                sectionHeading: "General",
                sectionChildren: [
                  SectionContent(
                    sectionName: "Notification",
                    sectionLeading: const Icon(Icons.notifications),
                    onSectionTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Notifications(),
                        ),
                      );
                    },
                  ),
                  SectionContent(
                    sectionName: "Languages",
                    sectionLeading: const Icon(Icons.language),
                    onSectionTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Languages(),
                        ),
                      );
                    },
                  ),
                  SectionContent(
                    sectionName: "Help and Support",
                    sectionLeading: const Icon(Icons.info),
                    onSectionTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HelpSupport(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              TextButton(
                onPressed: () async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  await prefs.setString('currentDashState', "Home");
                  await prefs.setInt('currentIndexValue', 0);
                  await signOut();
                },
                child: Text(
                  "Logout",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
