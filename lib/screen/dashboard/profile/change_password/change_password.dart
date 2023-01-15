import 'package:flutter/material.dart';
import 'package:fraudsentry/screen/dashboard/profile/shared/colors.dart';
import 'package:fraudsentry/screen/dashboard/profile/shared/spacing.dart';
import 'package:fraudsentry/screen/dashboard/profile/widgets/app_button.dart';
import 'package:fraudsentry/screen/dashboard/profile/widgets/text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Column(
                  children: [
                    verticalSpaceMini,
                    SizedBox(
                      width: 250,
                      child: Text(
                        "Create a New Password",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    verticalSpaceMicro,
                    Text(
                      "Enter your new password",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
                verticalSpaceMini,
                Column(
                  children: [
                    InputField(
                      kPadding: 0,
                      labelText: "New Password",
                      hintText: "Enter new password",
                      suffixIcon: true,
                      suffixWidget: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.visibility),
                      ),
                    ),
                    InputField(
                      kPadding: 0,
                      labelText: "Confirm Password",
                      hintText: "Confirm new password",
                      suffixIcon: true,
                      suffixWidget: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.visibility),
                      ),
                    ),
                  ],
                ),
                verticalSpaceMini,
                const AppButton(
                  title: "Next",
                  height: 45,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
