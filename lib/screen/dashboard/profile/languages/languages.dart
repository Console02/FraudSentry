import 'package:flutter/material.dart';
import 'package:fraudsentry/screen/dashboard/profile/change_password/change_password.dart';
import 'package:fraudsentry/screen/dashboard/profile/face_id/face_id.dart';
import 'package:fraudsentry/screen/dashboard/profile/fngerprint/finger_print.dart';
import 'package:fraudsentry/screen/dashboard/profile/shared/colors.dart';
import 'package:fraudsentry/screen/dashboard/profile/widgets/profile_section.dart';
import 'package:fraudsentry/screen/dashboard/profile/widgets/section_content.dart';
import 'package:google_fonts/google_fonts.dart';

class Languages extends StatefulWidget {
  const Languages({Key? key}) : super(key: key);

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
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
            "Language",
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
                sectionHeading: "Suggested Languages",
                sectionChildren: [
                  SectionContent(
                    sectionName: "English (UK)",
                    onSectionTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FaceID(),
                        ),
                      );
                    },
                    sectionTrailing: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.check_rounded,
                        size: 24,
                        color: kPrimaryColor,
                      ),
                    ),
                    onTrailingTap: () {
                      setState(() {
                        faceIdOn = !faceIdOn;
                      });
                    },
                  ),
                  SectionContent(
                    sectionName: "English",
                    onSectionTap: () {},
                  ),
                  SectionContent(
                    sectionName: "Bahasa Indonesia",
                    onSectionTap: () {},
                  ),
                ],
              ),
              ProfileSection(
                sectionHeading: "Other Languages",
                sectionChildren: [
                  SectionContent(
                    sectionName: "Chinese",
                    onSectionTap: () {},
                  ),
                  SectionContent(
                    sectionName: "Croatian",
                    onSectionTap: () {},
                  ),
                  SectionContent(
                    sectionName: "Czech",
                    onSectionTap: () {},
                  ),
                  SectionContent(
                    sectionName: "Danish",
                    onSectionTap: () {},
                  ),
                  SectionContent(
                    sectionName: "Filipino",
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
