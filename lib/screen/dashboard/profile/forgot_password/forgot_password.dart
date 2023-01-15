import 'package:flutter/material.dart';
import 'package:fraudsentry/screen/dashboard/profile/shared/colors.dart';
import 'package:fraudsentry/screen/dashboard/profile/shared/spacing.dart';
import 'package:fraudsentry/screen/dashboard/profile/widgets/app_button.dart';
import 'package:fraudsentry/screen/dashboard/profile/widgets/text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                        "Forgot Password",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    verticalSpaceMicro,
                    Text(
                      "Recover your account password",
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
                  children: const [
                    InputField(
                      kPadding: 0,
                      labelText: "E-mail",
                      hintText: "Enter your email address",
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
