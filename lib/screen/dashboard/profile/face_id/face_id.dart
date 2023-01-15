import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fraudsentry/screen/dashboard/profile/shared/colors.dart';
import 'package:fraudsentry/screen/dashboard/profile/shared/spacing.dart';
import 'package:fraudsentry/screen/dashboard/profile/widgets/app_button.dart';
import 'package:google_fonts/google_fonts.dart';

class FaceID extends StatefulWidget {
  const FaceID({Key? key}) : super(key: key);

  @override
  State<FaceID> createState() => _FaceIDState();
}

class _FaceIDState extends State<FaceID> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,
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
          centerTitle: true,
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  verticalSpaceMini,
                  Text(
                    "Face Recognition",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  verticalSpaceMicro,
                  Text(
                    "Add a face recognition to make your account more secure",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
              SvgPicture.asset(
                "assets/icons/face_id.svg",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppButton(
                    title: "Skip",
                    width: 125,
                    height: 45,
                    backgroundColor: kWhiteColor,
                    titleColor: kPrimaryColor,
                    borderColor: kPrimaryColor,
                  ),
                  AppButton(
                    title: "Start",
                    width: 125,
                    height: 45,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
