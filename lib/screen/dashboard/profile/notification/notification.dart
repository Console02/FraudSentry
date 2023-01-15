import 'package:flutter/material.dart';
import 'package:fraudsentry/screen/dashboard/profile/change_password/change_password.dart';
import 'package:fraudsentry/screen/dashboard/profile/face_id/face_id.dart';
import 'package:fraudsentry/screen/dashboard/profile/fngerprint/finger_print.dart';
import 'package:fraudsentry/screen/dashboard/profile/shared/colors.dart';
import 'package:fraudsentry/screen/dashboard/profile/upgrade_account/upgrade_account.dart';
import 'package:fraudsentry/screen/dashboard/profile/widgets/profile_details.dart';
import 'package:fraudsentry/screen/dashboard/profile/widgets/profile_section.dart';
import 'package:fraudsentry/screen/dashboard/profile/widgets/section_content.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool faceIdOn = false;
  bool fingerPrintOn = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          iconTheme: const IconThemeData(color: Colors.black),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.chevron_left,
            ),
          ),
          title: Text(
            "Notification",
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
              const SizedBox(
                height: 10,
              ),
              ProfileSection(
                sectionHeading: "Set your notification",
                sectionChildren: [
                  SectionContent(
                    sectionName: "Show Notifications",
                    sectionLeading: const Icon(Icons.notifications),
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
                    sectionName: "Financial Activity",
                    sectionLeading: const Icon(Icons.local_activity),
                    onSectionTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FingerPrint(),
                        ),
                      );
                    },
                  ),
                  SectionContent(
                    sectionName: "Non-financial Activity",
                    sectionLeading: const Icon(Icons.local_activity_outlined),
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
                    sectionName: "Security",
                    sectionLeading: const Icon(Icons.security),
                    onSectionTap: () {},
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
